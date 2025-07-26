#!/bin/bash
if [[ $EUID -ne 0 ]]; then
  exec sudo "$0" "$@"
fi

WG_DIR="/etc/wireguard"
CURRENT_IF=$(wg show interfaces | head -n1)

echo
gum style --border normal --padding "1 2" --foreground 212 --border-foreground 240 "Aktuelles VPN: ${CURRENT_IF:-Keins aktiv}"
echo

# Liste Konfigurationsdateien auf
mapfile -t CONFIGS < <(find "$WG_DIR" -name '*.conf' -exec basename {} .conf \;)

if [[ ${#CONFIGS[@]} -eq 0 ]]; then
    gum style --foreground 9 "Keine .conf-Dateien in $WG_DIR gefunden."
    exit 1
fi

OPTIONS=()

# Wenn ein Interface aktiv ist, Option zum Deaktivieren hinzufügen
if [[ -n "$CURRENT_IF" ]]; then
    OPTIONS+=("$CURRENT_IF deaktivieren")
fi

# Alle Configs als Aktivieren-Optionen hinzufügen
for conf in "${CONFIGS[@]}"; do
    OPTIONS+=("$conf aktivieren")
done

# Auswahl mit gum anzeigen
CHOICE=$(printf "%s\n" "${OPTIONS[@]}" | gum choose --header "Wähle eine Option:")

if [[ -z "$CHOICE" ]]; then
    gum style --foreground 3 "Abgebrochen."
    exit 0
fi

if [[ "$CHOICE" == *deaktivieren ]]; then
    IF_TO_DOWN=${CHOICE%" deaktivieren"}
    gum spin --title "Stoppe $IF_TO_DOWN..." -- sudo wg-quick down "$IF_TO_DOWN"
    gum style --foreground 10 "VPN $IF_TO_DOWN wurde deaktiviert."
    exit 0
fi

if [[ "$CHOICE" == *aktivieren ]]; then
    IF_TO_UP=${CHOICE%" aktivieren"}
    # Wenn schon aktiv
    if [[ "$IF_TO_UP" == "$CURRENT_IF" ]]; then
        gum style --foreground 10 "$IF_TO_UP ist bereits aktiv."
        exit 0
    fi
    # Falls anderes aktiv ist → beenden
    if [[ -n "$CURRENT_IF" ]]; then
        gum spin --title "Stoppe $CURRENT_IF..." -- sudo wg-quick down "$CURRENT_IF"
    fi
    gum spin --title "Starte $IF_TO_UP..." -- sudo wg-quick up "$IF_TO_UP"
    gum style --foreground 10 "VPN $IF_TO_UP ist jetzt aktiv."
    exit 0
fi

gum style --foreground 9 "Ungültige Auswahl."
exit 1


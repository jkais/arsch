set -eEuo pipefail

last_command=""
trap 'echo "❌ Fehler in Befehl: $last_command"' ERR
trap 'last_command=$BASH_COMMAND' DEBUG

# Install all scripts
#
{
  for f in ~/.local/share/arsch/installation/scripts/*.sh; do bash "$f"; done
} 

cat << 'EOF'

 ad88888ba   88        88    ,ad8888ba,    ,ad8888ba,   88888888888  ad88888ba    ad88888ba
d8"     "8b  88        88   d8"'    `"8b  d8"'    `"8b  88          d8"     "8b  d8"     "8b
Y8,          88        88  d8'           d8'            88          Y8,          Y8,
`Y8aaaaa,    88        88  88            88             88aaaaa     `Y8aaaaa,    `Y8aaaaa,
  `"""""8b,  88        88  88            88             88"""""       `"""""8b,    `"""""8b,
        `8b  88        88  Y8,           Y8,            88                  `8b          `8b
Y8a     a8P  Y8a.    .a8P   Y8a.    .a8P  Y8a.    .a8P  88          Y8a     a8P  Y8a     a8P
 "Y88888P"    `"Y8888Y"'     `"Y8888Y"'    `"Y8888Y"'   88888888888  "Y88888P"    "Y88888P"

                                      HAVE FUN!

EOF

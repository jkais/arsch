PROFILE_DIR=$(find ~/.mozilla/firefox -maxdepth 1 -name "*.default-release" -type d)

cat > "$PROFILE_DIR/user.js" << EOF
user_pref("browser.startup.page", 3);
user_pref("browser.sessionstore.resume_from_crash", true);
EOF

xdg-settings set default-web-browser firefox.desktop

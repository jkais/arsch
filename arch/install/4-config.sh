if [[ -n "${USER_NAME//[[:space:]]/}" ]]; then
  git config --global user.name "$USER_NAME"
fi

if [[ -n "${USER_EMAIL//[[:space:]]/}" ]]; then
  git config --global user.email "$USER_EMAIL"
fi

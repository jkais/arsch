# Need gum to query for input
yay -S --noconfirm --needed gum

# Configure identification
CURRENT_NAME=$(git config --global user.name)
CURRENT_EMAIL=$(git config --global user.email)

# Ask only if not already set
if [[ -z "${CURRENT_NAME//[[:space:]]/}" ]]; then
  export USER_NAME=$(gum input --placeholder "Enter full name" --prompt "Name: ")
  if [[ -n "${USER_NAME//[[:space:]]/}" ]]; then
    git config --global user.name "$USER_NAME"
  fi
fi

if [[ -z "${CURRENT_EMAIL//[[:space:]]/}" ]]; then
  export USER_EMAIL=$(gum input --placeholder "Enter email address" --prompt "Email: ")
  if [[ -n "${USER_EMAIL//[[:space:]]/}" ]]; then
    git config --global user.email "$USER_EMAIL"
  fi
fi
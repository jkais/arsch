# Need gum to query for input
yay -S --noconfirm --needed gum

# Configure identification
echo -e "\nEnter identification for Git (leave empty when already done):"
export USER_NAME=$(gum input --placeholder "Enter full name" --prompt "Name> ")
export USER_EMAIL=$(gum input --placeholder "Enter email address" --prompt "Email> ")

if [[ -n "${USER_NAME//[[:space:]]/}" ]]; then
  git config --global user.name "$USER_NAME"
fi

if [[ -n "${USER_EMAIL//[[:space:]]/}" ]]; then
  git config --global user.email "$USER_EMAIL"
fi
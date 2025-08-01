# Need gum to query for input
yay -S --noconfirm --needed 

# Set git identity
if [[ -z "$(git config --global user.name)" ]]; then
  USER_NAME=$(gum input --placeholder "Enter full name" --prompt "(git) Name: ")
  if [[ -n "${USER_NAME//[[:space:]]/}" ]]; then
    git config --global user.name "$USER_NAME"
  fi
fi

if [[ -z "$(git config --global user.email)" ]]; then
  USER_EMAIL=$(gum input --placeholder "Enter email address" --prompt "(git) Email: ")
  if [[ -n "${USER_EMAIL//[[:space:]]/}" ]]; then
    git config --global user.email "$USER_EMAIL"
  fi
else
  echo "Git user.email is already set to: $(git config --global user.email)"
fi

git config --global alias.co checkout
git config --global pull.rebase true
git config --global init.defaultBranch main

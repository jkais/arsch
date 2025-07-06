# Need gum to query for input
yay -S --noconfirm --needed gum

# Configure identification
echo -e "\nEnter identification for Git:"
export USER_NAME=$(gum input --placeholder "Enter full name" --prompt "Name> ")
export USER_EMAIL=$(gum input --placeholder "Enter email address" --prompt "Email> ")

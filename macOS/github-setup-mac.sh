#docs: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

ssh-keygen -t ed25519 -C "github"
 
# create and modify ~/.ssh/config file to automatically load keys into the ssh-agent
touch ~/.ssh/config

awk 'BEGIN {
    print "Host github.com";
    print "AddKeysToAgent yes";
    print "UseKeychain yes";
    print "IdentityFile ~/.ssh/github";
}' > ~/.ssh/github

ssh-add --apple-use-keychain ~/.ssh/github

echo "Manual step required: add public ssh key to github. Press Enter to proceed..."
read -r

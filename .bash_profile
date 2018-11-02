# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
PATH=$PATH:"/Users/nacho/Library/Android/sdk/platform-tools"
export PATH

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done



# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Volumes/HDD/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Volumes/HDD/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Volumes/HDD/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Volumes/HDD/Downloads/google-cloud-sdk/completion.bash.inc'; fi

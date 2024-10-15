### Add to ~/.profile
````
function git {
  if [[ "$1" == "clone" && "$@" != *"--help"* ]]; then
    shift 1
    command git clonerecursive "$@"
  else
    command git "$@"
  fi
}
````
Source: https://stackoverflow.com/a/39357426/5116207

### Configure `git clonerecursive` command
````
git config --global alias.clonerecursive 'clone --recurse-submodules'
````

Source: https://stackoverflow.com/a/2553799/5116207

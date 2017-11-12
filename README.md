# Dotfiles

This repo is there as a personal reminder about how to configure my `dotfiles`.

> It's still  under construction 🚧 and customization 🎨. Don't try to fork / clone them.

These dotfiles are forked from [Le wagon dotfiles](https://github.com/lewagon/dotfiles).

## Install

### Xcode

```sh
xcode-select --install
```

### Homebrew
```sh
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
```

### Oh my zsh

Fancy your terminal (*don't forget to restart the terminal windows*).

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### GitHub

Generate SSH keys to authenticate on GitHub and Heroku.

```sh
mkdir -p ~/.ssh && ssh-keygen -t ed25519 -o -a 100 -f ~/.ssh/id_ed25519 -C "your@email.here"
```

Then copy the content of this command and paste it in GitHub (https://github/settings/ssh).

```sh
cat ~/.ssh/id_ed25519.pub
```

To check if it worked, close terminal windows and run:

```sh
ssh -T git@github.com
```

If it doesn't, try running:

```sh
ssh-add ~/.ssh/id_ed25519
```


### Fork

Fork this [`dotfiles`](#) repository to your account.

### Clone `dotfiles` in local code folder
Store your GitHub username is a variable that will be useful in the next steps.

```sh
export GITHUB_USERNAME=github_username
```

Create your code folder and clone your new dotfiles.

```sh
mkdir -p ~/code/$GITHUB_USERNAME && cd $_ && git clone git@github.com:$GITHUB_USERNAME/dotfiles.git
```

### Install `install.sh`

Run the `dotfiles` installer.

```sh
cd ~/code/$GITHUB_USERNAME/dotfiles
zsh install.sh
```

### Install `git_setup`
Run the git installer.

```sh
cd ~/code/$GITHUB_USERNAME/dotfiles
zsh git_setup.sh
```

## Files

### `aliases`

Config file to create aliases. This is the basic syntax to create a new one:

```sh
alias aliasname="command executed"
```

### `gitignore`

A global list of files that are ignored by git.

### `gitconfig`

All git config in one file such as colors, aliases, user info...

### `gemrc`

A config file that displays information about the Ruby gems environment.

### `git_setup.sh`

A setup file for git. Login to your git account and setup your

***

Once this repo is forked, go back to [lewagon/setup](https://github.com/lewagon/setup)

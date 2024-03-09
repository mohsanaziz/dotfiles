# Mohsan's dotfiles

## Prerequisite

### SSH key

Generate a ssh key :

```bash
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

Add the public key to your profile.

### XCode command line tools

Open a terminal, then :

- Go to `/Applications/Utilities/`
- Run `xcode-select --install`

## Installation

Clone the repository inside `$HOME/.dotfiles` :

```bash
git clone git@github.com:mohsanaziz/dotfiles.git .dotfiles
```

Then run the main install script from the `$HOME/.dotfiles` :

```bash
/bin/bash install.sh
```

When it is done. Install all the tools :

```bash
/bin/bash install_tools.sh
```

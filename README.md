# VSCode setup by IRNAS

![vscode-banner](images/vscode-banner.webp)

## Introduction

This repository contains installation scripts and configuration files for setting up the VSCode
editor from scratch. The configuration files inside the `dotfiles/.config/Code` are pretty
opinionated. They are suitable for embedded Zephyr/NCS development, writing Python scripts and
JavaScript/React Native applications.

The configuration is especially coupled to our `.pre-commit-config.yaml` file in the
[irnas-zephyr-template] repo, as it sets up formatters, linters and other tools that are used by the
`pre-commit` tool.

[irnas-zephyr-template]: https://github.com/IRNAS/irnas-zephyr-template/tree/main

Currently supported operating systems:

- Linux (specifically Ubuntu)
- MacOS

## Editor and extra tooling

1. To install VsCode run:

   ```shell
   ./installation_scripts/install_vscode.sh
   ```

2. To install LLVM tools run (make sure that all instances of VSCode are closed at this point):

   ```shell
   ./installation_scripts/install_llvm.sh
   ```

## Installing configuration

You can setup configuration in two ways.

### Importing Profile file

1. Open VSCode.
2. Select _cogwheel_ icon on the bottom-left.
3. Navigate through _Profiles -> Import Profile -> Select File_ and select `irnas.code-profile` file
   in this repo.
4. Click _Create Profile_ button on the bottom-left.
5. Choose a name for the profile and then click _Create_ button.

The configuration and extensions will be applied to the VSCode editor.

### Symlinks

With this approach you need to make sure that you have somewhat latest version of the `node`
installed on your machine. To install extensions and symlink VSCode settings to its correct location
run:

```shell
./installation_scripts/install_extensions.sh
cd dotfiles
./place_dotfiles.sh
```

## Maintaining your configuration and expected workflow

### Using Profiles

Users can maintain two Profiles inside the VSCode:

- `irnas` - This should be the one provided by this repo.
- and custom user Profile, built on top of the `irnas` one.

Whenever this repository is updated users can update the `user` Profile and then bring desired
changes to their custom Profile.

### Using symlinks

`place_dotfiles.sh` creates a symlink for the `.config/Code` alongside it to its correct location in
the `~/` home directory.

This means that whatever changes are made in the `~/.config/Code`, they are reflected in this
repository and thus visible in the `git` version control system.

Developers can thus:

- fork this repo to their personal GitHub account,
- start with a good working VSCode configuration,
- expand it further by their preferences, commit changes and
- sync with the upstream repo, when they want to fetch new commits.

Developers can also manually copy the things that they want and manually update when they want to.

## Backing up existing settings

If you care about your current VSCode configuration you may want to backup below folders:

On Windows:

- `%APPDATA%\Code`
- `%USERPROFILE%\.vscode`

On Linux and macOS:

- `$HOME/.config/Code/`
- `$HOME/.vscode`

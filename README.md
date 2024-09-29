# Pop!_OS dotfiles

`Pop!_Linux` is based on `Ubuntu`, so theoretically `Ubuntu` can also use this configuration, and in terms of tool configuration, other `Linux` distributions are equally applicable.

## preview

### wezterm
![wezterm](./images/global.png)
![tabs](./images/tabs.png)

### neovim
![neovim](./images/neovimpng.png)

### fcitx5
![fcitx5](./images/keyboard.png)

### yazi
![yazi](./images/yazi.png)

## 🛠 features

- Fcitx5 theme and Chinese input configuration
- System monitoring and multiple tool configurations
- Attractive user interface
- A complete configuration of Neovim based on AstroNvim
- Do not force the installation of programs
- Fully automatic configuration

## ⚡️ installation

**Fcitx5 must be downloaded from Flathub!!!**

1. Create a `dotfiles` directory under the `~/.config` folder

```shell
mkdir ~/.config/dotfiles
```

2. cd to the `dotfiles` directory

```shell
cd ~/.config/dotfiles
```

3. Clone the current repository

```shell
git clone https://github.com/1538379200/popos_dotfiles.git
```

4. Run the `install.sh` file

```shell
sh install.sh
```

5. Download the `Inconsolata Nerd Font` font or your desired font from [Nerd Fonts](https://www.nerdfonts.com/font-downloads), you can modify the font as you wish
    - `nvim` font: `./neovide/config.toml` or `./nvim/lua/plugins/astrocore.lua`
    - `wezterm` font: `./wezterm/wezterm.lua`

5. Install the software in the configuration or only install the software you currently need

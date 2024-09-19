# Pop!_OS 应用配置文件
> 使用相关配置，需要安装对应的程序
>
> 示例处默认 `dotfiles` 文件夹存放在 `~/.config` 文件夹中
>
> 所有配置使用都通过软链接的方式进行，大多存放在 `~/.config` 目录下，特殊情况将标记

## fish配置

> 你可以使用 `startship` 来美化

- 建立软链接
```shell
ln ~/.config/dotfiles/fish ~/.config/fish
```
- 修改为默认`shell`
```shell
chsh -s /usr/bin/fish
```

## wezterm配置
### 设置 wezterm 为默认

> 以 `ubuntu` 为例，但你大概率不太需要设置为默认的，只需要设置快捷键即可

- 添加一个新的终端模拟器

```shell
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator <你的wezterm路径> 1070
```
- 选择为默认

```shell
sudo update-alternatives --config x-terminal-emulator
```

## fcitx5 配置

如果你使用 `flatpak` 下载的 `fcitx5` ，你需要下载 `flatseal` 权限管理工具，给 `fcitx5` 给予用户目录访问权限，然后再使用 `ln` 创建软链接

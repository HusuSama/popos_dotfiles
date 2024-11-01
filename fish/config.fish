if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
zoxide init fish | source
# 解决nvm安装node.js后，npm npx 命令找不到的问题
set PATH ~/.nvm/versions/node/v22.6.0/bin $PATH
# 启动本地的 yazi 命令行文件夹管理器
set PATH ~/yazi-x86_64-unknown-linux-gnu $PATH
# 设置 fdfind 别名
alias fd fdfind
# # 设置GTK程序使用fcitx5 引擎
# set GTK_IM_MODULE fcitx5
# set QT_IM_MODULE fcitx5
# set XMODIFIERS @im=fcitx5
alias ls  ~/eza/eza
# alias lazygit ~/lazygit/lazygit
# alias lazydocker ~/lazydocker/lazydocker

# pnpm
set -gx PNPM_HOME "/home/husu/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# fzf
set PATH ~/fzf-0.55.0 $PATH
fzf --fish | source
# fzf end

# golang start
set PATH /usr/local/go/bin $PATH
# golang end

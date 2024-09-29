# only config

# find all directories(ignore fcitx5)
directories=`find ~/.config/dotfiles -maxdepth 1 -type d ! -name ".*" -exec basename {} \;`

for dir in $directories
do
    if [ ${dir} != fcitx5 -a ${dir} != images ]
    then
        # if name != fcitx5 and images
        ln -s ~/.config/dotfiles/${dir} ~/.config/${dir}
        echo link directory ${dir} success !
    else
        # fictx5 config
        ln -s ~/.config/dotfiles/fcitx5 ~/.var/app/org.fcitx.Fcitx5/data/fcitx5
        echo link directory fcitx5 success !
    fi
done

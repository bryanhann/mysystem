rm -rf ~/myborg
git clone https://github.com/bryanhann/dot.config.myborg    ~/.config/myborg.hide
git clone -b myborg https://github.com/bryanhann/dot.borg             ~/myborg
cd ~/myborg
echo $PWD
./install.sh
echo restart.

# dotfiles

## "And into the night through the STOW that swept through the hall"
> Jenny of oldstone - GOTs8e2

## Credits
Highly inspired by Vishnu Dev TJ,
and Alex Pearce [!blog](https://alexpearce.me/2016/02/managing-dotfiles-with-stow/) on Managing dotfiles with stow 

### Install and Usage
1. Clone this repository to your home directory:
```bash
cd
git clone https://github.com/sayoojsamuel/dotfiles.git
```
2. Install GNU-Stow (or XStow)
```bash
sudo apt-get install stow
```
4. Run `install.sh` or `update.sh` with sufficient permissions:
```bash
cd dotfiles
chmod a+x install.sh update.sh
sh <install/update>.sh  
```

### Uninstall 
To uninstall specific apps, do a `stow -D APP` in the `dotfiles` directory. To install them again, run `stow APPNAME`

## Further Reading
stow --[no-folding](https://news.ycombinator.com/item?id=7927930)
Gnu manual [Tree folding](https://www.gnu.org/software/stow/manual/stow.html#Tree-folding)

## Adding configs to dotfiles
1. Create a folder for Tool
```bash
cd ~/dotfiles; mkdir -p ipython;
```
2. Move the config file to the new directory, following the correct path
```bash
mv ./config/ipython ~dotfiles/ipython/.config/ipython
```
3. Install using stow (to create symbolic link)
```bash
cd ~/dotfiles
stow ipython
```
4. [Extra: Overwrite] User `--adopt` to overwrite an existing config
```bash
cd ~/dotfiles
stow --adopt sage
```
Overwrite may sound cool, but I personally don't like it. As expected, it just links the old files. New files are untracked as the folder is not properly stowed.


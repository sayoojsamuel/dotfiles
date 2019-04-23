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

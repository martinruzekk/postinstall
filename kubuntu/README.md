# Kubuntu post install duties

What to do after fresh installation of Kubntu.

## Todo

* Download postinstall.sh script
  * wget www.sec.martinruzek.eu/postinstall.sh
* Run the script
* Download oh-my-zsh and powerlevel10k theme
  * sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  * git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
* Download [Strechy](https://github.com/hovancik/stretchly/releases)
* Configure looks ([inspiration](https://youtu.be/exQh0_JKBJQ))
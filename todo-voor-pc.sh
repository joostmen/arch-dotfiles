sudo pacman -S zsh git curl wget
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
echo "todo: zet ZSH_THEME="powerlevel10k/powerlevel10k" en plugins=(git zsh-autosuggestions zsh-syntax-highlighting fzf)
in .zshrc"

# Autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Fzf (fuzzy finder) voor snelle zoekfuncties
sudo pacman -S fzf

echo "hetvolgende moet zsh zijn"
echo $shell
echo "als t goed is is t klaar :)"

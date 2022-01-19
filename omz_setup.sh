# install zsh and omz
sudo apt install zsh -y
chsh -s $(which zsh)
# zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install custom plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# install custom color theme
curl https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.ansi-dark --output ~/.dircolors
echo "eval \`dircolors ~/.dircolors\`" >> ~/.zshrc

# install theme and plugins
sed -i 's/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"fino\"/' ~/.zshrc
sed -i 's/plugins=(git)/plugins=(git docker docker-compose terraform aws gcloud helm python virtualenv zsh-syntax-highlighting zsh-autosuggestions)/' ~/.zshrc
# omz theme set fino
# omz plugin enable git
# omz plugin enable docker
# omz plugin enable docker-compose
# omz plugin enable terraform
# omz plugin enable aws
# omz plugin enable gcloud
# omz plugin enable helm
# omz plugin enable python
# omz plugin enable virtualenv
# omz plugin enable zsh-syntax-highlighting
# omz plugin enable zsh-autosuggestions

# reload omz
omz reload
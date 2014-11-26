# The purpose of this script is to install initial tools required for the further dotfiles configuration
#
# Currently, this means:
# 1. Install Homebrew
# 2. Install zsh
# 3. Change default shell to zsh

set -e

# Load UI routines
. ui.sh

add_usr_local_bin_to_path () {
	if [[ ":$PATH:" != *":/usr/local/bin:"* ]]; 
    then
		info "Adding /usr/local/bin to PATH\n"
		PATH="/usr/local/bin:$PATH"
	fi
}

install_homebrew () {
	if test ! $(which brew)
	then
		info "Installing Homebrew...\n"
		ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        success "Done.\n"
	else
		info "Homebrew is already installed.\n"
	fi
}

install_brewcask () {
    if (brew list | grep -w brew-cask >/dev/null); 
    then
        info "Brew Cask is already installed.\n"
    else
        info "Installing brew-cask...\n"
        brew install brew-cask
        success "Done.\n"
    fi
}

install_git () {
	if (brew list | grep -w git >/dev/null); 
    then
		info "Git is already installed.\n"
	else
		info "Installing git...\n"
		brew install git
        success "Done.\n"
	fi
}

install_zsh () {
	if (brew list | grep -w zsh >/dev/null); 
    then 
		info "Zsh is already installed.\n"
	else
		info "Installing zsh...\n"
		brew install zsh
        success "Done.\n"
	fi
}

make_zsh_default () {
    if [ "$SHELL" == "zsh" ];
    then 
		info "Already running zsh.\n"
	else
		info "Switching to zsh...\n"
		chsh -s $(which zsh)
        success "Done.\n"
	fi
}

add_usr_local_bin_to_path
install_homebrew
install_brewcask
install_git
install_zsh
make_zsh_default
success "Bootstrapping is complete\n"

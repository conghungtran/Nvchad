* git clone https://github.com/conghungtran/NvChad ~/.config/nvim && nvim
* mkdir -p ~/.fonts
* cd ~/.config/nvim/ && cp JetBrainsMonoNLNerdFont-Regular.ttf ~/.fonts
* fc-cache -fv
# Download the latest AppImage
wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage

# Make it executable
chmod u+x nvim.appimage

# Run it directly or move to PATH
./nvim.appimage

# Or install system-wide
sudo mv nvim.appimage /usr/local/bin/nvim


gsettings set org.gnome.mutter center-new-windows true



# Xóa cấu hình NVchat trong thư mục config
rm -rf ~/.config/nvim
rm -rf ~/.cache/nvim
rm -rf ~/.local/share/nvim

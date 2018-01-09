# set localtime
ls -sf /usr/share/zoneinfo/Americas/Denver /etc/localtime
hwclock --systohc
# locale-get (hopefully)
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen
# hostname
echo "alex-arch" >> /etc/hostname
# terrible password
passwd
password
password
# install grub
pacman -S --noconfirm grub
grub-mkconfig /boot/grub/grub.cfg
# install login screen
pacman -S --noconfirm sddm 
systemctl enable sddm
# install sudo and add wheel to sudoers
pacman -S --noconfirm sudo
echo "%wheel     ALL=(ALL)       ALL" >> /etc/sudoers
# create user and give terrible password
useradd -m -g wheel alex
passwd
password
password
# create simple vimrc for alex
echo "set number" >> /home/alex/.vimrc
echo "set expandtab" >> /home/alex/.vimrc
echo "imap jk <esc>" >> /home/alex/.vimrc
echo "set tabstop=4" >> /home/alex/.vimrc
echo "set shiftwidth=4" >> /home/alex/.vimrc
# install wanted packages
pacman -S --noconfirm xorg-server xf86-video-intel mesa bash-completion plasma plasma-nm okular gwenview hunspell hunspell-en kate ark gimp libreoffice dialog ntfs-3g konsole dolphin make binutils fakeroot vim 

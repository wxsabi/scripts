ln -sf /usr/share/zoneinfo/America/Los_Angeles /etc/localtime
hwclock --systohc
nano /etc/locale.gen
locale-gen
nano /etc/locale.conf
nano /etc/hostname
passwd
pacman -S grub efibootmgr
lsblk
grub-install /dev/nvme0n1p1 --efi-directory=/boot --bootloader-id=archlinux
grub-mkconfig -o /boot/grub/grub.cfg
#If and NVIDIA GPU will be used, the line "nvidia_drm.modeset=1" needs to be add to the list of arguments of the line "GRUB_CMDLINE_LINUX_DEFAULT" and then rerun "grub-mkconfig -o /boot/grub/grub.cfg" after installing the nvidia package
nano /etc/hostname
reboot

---------------------------------------------------------

#Add User
useradd -m -G wheel kincho
passwd -Sa
nano /etc/sudoers
passwd kincho

---------------------------------------------------------

#Fonts

pacman -S adobe-source-han-sans-jp-fonts adobe-source-han-serif-jp-fonts otf-ipaexfont otf-ipafont otf-ipamjfont ttf-hanazono ttf-sazanami ttf-vlgothic adobe-source-han-sans-kr-fonts adobe-source-han-serif-kr-fonts ttf-baekmuk wqy-zenhei wqy-bitmapfont ttf-hannom  	opendesktop-fonts adobe-source-han-sans-cn-fonts adobe-source-han-sans-hk-fonts adobe-source-han-sans-tw-fonts adobe-source-han-serif-cn-fonts adobe-source-han-serif-hk-fonts adobe-source-han-serif-tw-fonts

---------------------------------------------------------

#enable multilib in /etc/pacman.conf for steam
#Enable Repositories
#/etc/pacman.conf

#Install Packages
pacman -Syu --noconfirm --needed konsole godot ark firefox networkmanager xorg-xwayland plasma-meta sddm amd-ucode dolphin blender kate konversation transmission-gtk obs-studio code krita inkscape kdenlive btop obs-studio gtop audacity git openssh lshw audacity steam alsa-utils alsa-plugins alsa-firmware thunderbird s-nail mailx flatpak signal-desktop dbus meson fakechroot gtest webkit2gtk libayatana-appindicator gst-libav cmake ruby vinagre avahi go nodejs npm python mysql-workbench mariadb imagemagick yarn rust spectacle gopls okular gwenview piper kdeconnect kolourpaint kamoso elisa akregator kapman kmplot

#For Apex Legends to work using AMD Graphics cards
pacman -R lib32-amdvlk amdvlk
pacman -S vulkan-radeon lib32-vulkan-radeon

#initialize Mariadb
sudo mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql

#Enable services
systemctl enable NetworkManager.service
systemctl enable sddm.service
systemctl enable avahi-daemon
systemctl enable dbus
systemctl enable mariadb.service
systemctl enable systemd-timesyncd.service

#Add plasma stuff -- Plasma will be started by sddm
# nano .xinitrc

# Install packages

# mariadb

# mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql

# timedatectl

# fdisk -l
# create a /boot for MGR or EFI(1GB) partition with code 1, a swap partition with code 29, a / partition with code 23 and a /home partition with code 42

# For example, to create an Ext4 file system on /dev/root_partition, run:

# mkfs.ext4 /dev/root_partition

# If you created a partition for swap, initialize it with mkswap(8):

# mkswap /dev/swap_partition

# If you created an EFI system partition, format it to FAT32 using mkfs.fat(8).
# mkfs.fat -F 32 /dev/efi_system_partition

Mount the root volume to /mnt. For example, if the root volume is /dev/root_partition:

# mount /dev/root_partition /mnt

Create any remaining mount points (such as /mnt/boot) and mount the volumes in their corresponding hierarchical order.
Tip: Run mount(8) with the --mkdir option to create the specified mount point. Alternatively, create it using mkdir(1) beforehand.

For UEFI systems, mount the EFI system partition:

# mount --mkdir /dev/efi_system_partition /mnt/boot

If you created a swap volume, enable it with swapon(8):

# swapon /dev/swap_partition


Install essential packages
Note: No software or configuration (except for /etc/pacman.d/mirrorlist) gets carried over from the live environment to the installed system.

Use the pacstrap(8) script to install the base package, Linux kernel and firmware for common hardware:

# pacstrap -K /mnt base linux linux-firmware networkmanager sudo nano

Configure the system
Fstab

Generate an fstab file (use -U or -L to define by UUID or labels, respectively):

# genfstab -U /mnt >> /mnt/etc/fstab

Check the resulting /mnt/etc/fstab file, and edit it in case of errors.
Chroot

Change root into the new system:

# arch-chroot /mnt

Time

Set the time zone:

# ln -sf /usr/share/zoneinfo/Region/City /etc/localtime

Run hwclock(8) to generate /etc/adjtime:

# hwclock --systohc

Localization

Edit /etc/locale.gen and uncomment en_US.UTF-8 UTF-8 and other needed UTF-8 locales. Generate the locales by running:

# locale-gen

Create the locale.conf(5) file, and set the LANG variable accordingly:

/etc/locale.conf

LANG=en_US.UTF-8

If you set the console keyboard layout, make the changes persistent in vconsole.conf(5):

/etc/vconsole.conf

KEYMAP=de-latin1

Network configuration

Create the hostname file:

/etc/hostname

yourhostname

Initramfs

Creating a new initramfs is usually not required, because mkinitcpio was run on installation of the kernel package with pacstrap.

For LVM, system encryption or RAID, modify mkinitcpio.conf(5) and recreate the initramfs image:

# mkinitcpio -P

Root password

Set the root password:

# passwd

#Install grub
# grub-install [/dev/targetdisk] --efi-directory=[/EFI Partition] --bootloader-id=GRUB

To acquire updated microcode, depending on the processor, install one of the following packages:

    amd-ucode for AMD processors,
    intel-ucode for Intel processors.




#!/bin/bash

# Function to check if the script is run as root
check_root() {
    if [ "$(id -u)" -ne 0 ]; then
        echo "ERROR: This script needs to be run as root."
        echo "To do that, run the script with 'sudo' before the command."
        exit 1
    fi
}

# Function to check internet connectivity
check_internet() {
    wget -q --spider http://example.com

    if [ $? -eq 0 ]; then
        echo "Internet connection detected."
        read -p "Type 'Y' to continue or 'N' to exit: " choice
        case $choice in
            [Yy]* )
                echo "Continuing with the installation..."
                ;;
            [Nn]* )
                echo "Exiting..."
                exit
                ;;
            * )
                echo "Invalid input. Exiting..."
                exit 1
                ;;
        esac
    else
        echo "ERROR: No internet connection."
        exit 1
    fi
}

# Function to install essential tools
install_all_tools() {
    echo "Installing essential tools..."
    sudo apt install -y \
        build-essential \
        git \
        curl \
        wget \
        unzip \
        zip \
        gcc \
        make \
        cmake \
        python3 \
        python3-pip \
        software-properties-common \
        apt-transport-https \
        ca-certificates \
        gnupg \
        lsb-release \
        snapd \
        net-tools \
        openssh-server \
        vim \
        nano \
        htop \
        tmux \
        tree \
        jq \
        dnsutils \
        traceroute \
        netcat \
        nmap \
        tcpdump \
        iftop \
        iotop \
        sysstat \
        mtr \
        ffmpeg \
        vlc \
        gimp \
        inkscape \
        libreoffice \
        gnome-shell-extensions \
        gnome-screenshot \
        synaptic \
        gparted \
        terminator \
        fonts-powerline \
        && echo "Essential tools installed successfully."
}

# Function to uninstall all tools
uninstall_all_tools() {
    echo "Uninstalling all tools..."
    sudo apt purge -y \
        build-essential \
        git \
        curl \
        wget \
        unzip \
        zip \
        gcc \
        make \
        cmake \
        python3 \
        python3-pip \
        software-properties-common \
        apt-transport-https \
        ca-certificates \
        gnupg \
        lsb-release \
        snapd \
        net-tools \
        openssh-server \
        vim \
        nano \
        htop \
        tmux \
        tree \
        jq \
        dnsutils \
        traceroute \
        netcat \
        nmap \
        tcpdump \
        iftop \
        iotop \
        sysstat \
        mtr \
        ffmpeg \
        vlc \
        gimp \
        inkscape \
        libreoffice \
        gnome-shell-extensions \
        gnome-screenshot \
        synaptic \
        gparted \
        terminator \
        fonts-powerline \
        gnome-tweak-tool \
        && echo "All tools uninstalled successfully."
}

# Function to install documentation
install_documentation() {
    while true; do
        clear
        echo "Documentation Menu"
        echo "==================="
        echo "1. File & Directory Management"
        echo "2. Text & Manipulation"
        echo "3. Process & System Management"
        echo "4. User & Permissions"
        echo "5. Networking & Connectivity"
        echo "6. Directory Navigation"
        echo "7. How To Install Packages"
        echo "8. SSH Commands"
        echo "9. Hardware Info"
        echo "10. Variables"
        echo "11. Advanced Commands"
        echo "12. Disk Management"
        echo "13. System Administration"
        echo "14. File Transfer"
        echo "15. Security"
        echo "16. Text Editing"
        echo "17. Back to Main Menu"
        echo "==================="
        read -p "Enter your choice (1-17): " choice

        case $choice in
            1)
                clear
                echo "File & Directory Management Commands:"
                echo "-----------------------------------"
                echo "1. ls - List directory contents"
                echo "    Example: ls"
                echo "2. mkdir - Create directories"
                echo "    Example: mkdir my_directory"
                echo "3. touch - Create files"
                echo "    Example: touch example.txt"
                echo "4. cp - Copy files and directories"
                echo "    Example: cp file1.txt file2.txt"
                echo "5. mv - Move or rename files and directories"
                echo "    Example: mv file1.txt new_location/"
                echo "6. rm - Remove files and directories"
                echo "    Example: rm file.txt"
                echo "7. find - Search for files in a directory hierarchy"
                echo "    Example: find /path/to/search -name 'filename'"
                echo "8. locate - Find files by name"
                echo "    Example: locate filename"
                echo "9. df - Report file system disk space usage"
                echo "    Example: df -h"
                echo "10. du - Estimate file space usage"
                echo "    Example: du -sh directory"
                echo "11. chown - Change file owner and group"
                echo "    Example: chown user:group file.txt"
                echo "12. chmod - Change file mode bits"
                echo "    Example: chmod 755 file.sh"
                echo "13. chgrp - Change group ownership of files"
                echo "    Example: chgrp group_name file.txt"
                echo "14. ln - Create links"
                echo "    Example: ln -s /path/to/file link_name"
                echo "15. stat - Display file or file system status"
                echo "    Example: stat file.txt"
                ;;
            2)
                clear
                echo "Text & Manipulation Commands:"
                echo "----------------------------"
                echo "1. cat - Concatenate and display file content"
                echo "    Example: cat file.txt"
                echo "2. grep - Search file content for patterns"
                echo "    Example: grep 'pattern' file.txt"
                echo "3. sed - Stream editor for filtering and transforming text"
                echo "    Example: sed 's/old/new/g' file.txt"
                echo "4. awk - Pattern scanning and processing language"
                echo "    Example: awk '/pattern/ {print}' file.txt"
                echo "5. wc - Print newline, word, and byte counts for each file"
                echo "    Example: wc -l file.txt"
                echo "6. sort - Sort lines of text files"
                echo "    Example: sort file.txt"
                echo "7. uniq - Report or omit repeated lines"
                echo "    Example: uniq file.txt"
                echo "8. tr - Translate or delete characters"
                echo "    Example: tr 'a-z' 'A-Z' < file.txt"
                echo "9. head - Output the first part of files"
                echo "    Example: head file.txt"
                echo "10. tail - Output the last part of files"
                echo "    Example: tail file.txt"
                echo "11. cut - Remove sections from each line of files"
                echo "    Example: cut -d' ' -f1 file.txt"
                echo "12. paste - Merge lines of files"
                echo "    Example: paste file1.txt file2.txt"
                echo "13. fmt - Reformat paragraph text"
                echo "    Example: fmt file.txt"
                echo "14. nl - Number lines of files"
                echo "    Example: nl file.txt"
                echo "15. rev - Reverse lines of a file"
                echo "    Example: rev file.txt"
                ;;
            3)
                clear
                echo "Process & System Management Commands:"
                echo "------------------------------------"
                echo "1. ps - Report a snapshot of current processes"
                echo "    Example: ps aux"
                echo "2. top - Display Linux processes"
                echo "    Example: top"
                echo "3. systemctl - Control the systemd system and service manager"
                echo "    Example: systemctl start service_name"
                echo "4. service - Run a System V init script"
                echo "    Example: service service_name start"
                echo "5. kill - Send signals to processes"
                echo "    Example: kill PID"
                echo "6. nice - Run a command with modified scheduling priority"
                echo "    Example: nice -n 10 command"
                echo "7. renice - Alter priority of running processes"
                echo "    Example: renice 10 PID"
                echo "8. free - Display amount of free and used memory in the system"
                echo "    Example: free -m"
                echo "9. htop - Interactive process viewer"
                echo "    Example: htop"
                echo "10. lsof - List open files"
                echo "    Example: lsof -i"
                echo "11. pstree - Display a tree of processes"
                echo "    Example: pstree"
                ;;
            4)
                clear
                echo "User & Permissions Commands:"
                echo "---------------------------"
                echo "1. useradd - Create a new user or update default new user information"
                echo "    Example: useradd username"
                echo "2. usermod - Modify a user account"
                echo "    Example: usermod -aG groupname username"
                echo "3. passwd - Update a user's authentication token(s)"
                echo "    Example: passwd username"
                echo "4. chown - Change file owner and group"
                echo "    Example: chown username:groupname file.txt"
                echo "5. chmod - Change file mode bits"
                echo "    Example: chmod 644 file.txt"
                echo "6. chgrp - Change group ownership of files"
                echo "    Example: chgrp groupname file.txt"
                echo "7. adduser - Add a user to the system"
                echo "    Example: adduser username"
                echo "8. deluser - Remove a user from the system"
                echo "    Example: deluser username"
                echo "9. sudo - Execute commands as another user"
                echo "    Example: sudo command"
                echo "10. su - Change user ID or become another user"
                echo "    Example: su username"
                echo "11. groups - Print group memberships for a user"
                echo "    Example: groups username"
                ;;
            5)
                clear
                echo "Networking & Connectivity Commands:"
                echo "----------------------------------"
                echo "1. ifconfig - Configure a network interface"
                echo "    Example: ifconfig"
                echo "2. ip - Show / manipulate routing, devices, policy routing and tunnels"
                echo "    Example: ip address show"
                echo "3. ping - Send ICMP ECHO_REQUEST to network hosts"
                echo "    Example: ping google.com"
                echo "4. netstat - Print network connections, routing tables, interface statistics, masquerade connections, and multicast memberships"
                echo "    Example: netstat -tuln"
                echo "5. route - Show / manipulate the IP routing table"
                echo "    Example: route -n"
                echo "6. arp - Manipulate the system ARP cache"
                echo "    Example: arp -a"
                echo "7. hostname - Show or set the system's host name"
                echo "    Example: hostname"
                echo "8. dig - DNS lookup utility"
                echo "    Example: dig example.com"
                echo "9. nslookup - Query Internet name servers interactively"
                echo "    Example: nslookup example.com"
                echo "10. host - DNS lookup utility"
                echo "    Example: host example.com"
                echo "11. iptables - Administration tool for IPv4 packet filtering and NAT"
                echo "    Example: iptables -L"
                echo "12. traceroute - Print the route packets trace to network host"
                echo "    Example: traceroute google.com"
                echo "13. netcat - Utility for reading from and writing to network connections"
                echo "    Example: nc -vz google.com 80"
                echo "14. ssh - Secure Shell client"
                echo "    Example: ssh user@hostname"
                echo "15. scp - Secure copy (remote file copy program)"
                echo "    Example: scp file.txt user@hostname:/remote/path"
                ;;
            6)
                clear
                echo "Directory Navigation Commands:"
                echo "------------------------------"
                echo "1. cd - Change the current directory"
                echo "    Example: cd /path/to/directory"
                echo "2. pwd - Print name of current/working directory"
                echo "    Example: pwd"
                echo "3. ls - List directory contents"
                echo "    Example: ls"
                echo "4. tree - List contents of directories in a tree-like format"
                echo "    Example: tree /path/to/directory"
                echo "5. pushd - Save and then change the current directory"
                echo "    Example: pushd /path/to/directory"
                echo "6. popd - Remove the top entry from the directory stack"
                echo "    Example: popd"
                echo "7. dirs - Display list of currently remembered directories"
                echo "    Example: dirs"
                ;;
            7)
                clear
                echo "How To Install Packages Commands:"
                echo "--------------------------------"
                echo "1. apt - Advanced Package Tool, command-line interface for package management"
                echo "    Example: apt install package_name"
                echo "2. dpkg - Debian package manager"
                echo "    Example: dpkg -i package.deb"
                echo "3. snap - Command-line interface to the Snap packaging system"
                echo "    Example: snap install package_name"
                echo "4. apt-get - Command-line interface for package management"
                echo "    Example: apt-get install package_name"
                echo "5. apt-cache - Query the APT cache"
                echo "    Example: apt-cache search package_name"
                echo "6. aptitude - High-level interface to the package manager"
                echo "    Example: aptitude install package_name"
                echo "7. yum - Yellowdog Updater Modified, an interactive, rpm based, package manager"
                echo "    Example: yum install package_name"
                echo "8. dnf - Package manager for RPM-based Linux distributions"
                echo "    Example: dnf install package_name"
                echo "9. pacman - Arch Linux package manager"
                echo "    Example: pacman -S package_name"
                echo "10. brew - The Missing Package Manager for macOS (or Linux)"
                echo "    Example: brew install package_name"
                ;;
            8)
                clear
                echo "SSH Commands:"
                echo "-------------"
                echo "1. ssh - Secure Shell client"
                echo "    Example: ssh user@hostname"
                echo "2. ssh-keygen - Generate SSH keys"
                echo "    Example: ssh-keygen -t rsa"
                echo "3. ssh-copy-id - Copy SSH keys to remote hosts"
                echo "    Example: ssh-copy-id user@hostname"
                echo "4. ssh-agent - Authentication agent"
                echo "    Example: ssh-agent bash"
                echo "5. scp - Secure copy (remote file copy program)"
                echo "    Example: scp file.txt user@hostname:/remote/path"
                echo "6. sftp - Secure File Transfer Protocol"
                echo "    Example: sftp user@hostname"
                echo "7. sshfs - Secure Shell File System (FUSE based)"
                echo "    Example: sshfs user@hostname:/remote/path /local/path"
                ;;
            9)
                clear
                echo "Hardware Info Commands:"
                echo "-----------------------"
                echo "1. lscpu - Display information about the CPU architecture"
                echo "    Example: lscpu"
                echo "2. lspci - List all PCI devices"
                echo "    Example: lspci"
                echo "3. lsusb - List USB devices"
                echo "    Example: lsusb"
                echo "4. lsblk - List block devices"
                echo "    Example: lsblk"
                echo "5. df - Report file system disk space usage"
                echo "    Example: df -h"
                echo "6. free - Display amount of free and used memory in the system"
                echo "    Example: free -m"
                echo "7. uptime - Show how long the system has been running"
                echo "    Example: uptime"
                echo "8. dmidecode - DMI table decoder"
                echo "    Example: dmidecode"
                echo "9. hdparm - Get/set ATA/SATA drive parameters"
                echo "    Example: hdparm -I /dev/sda"
                ;;
            10)
                clear
                echo "Variables Commands:"
                echo "-------------------"
                echo "1. Variable Declaration: VARIABLE_NAME=value"
                echo "    Example: MY_VAR='Hello World'"
                echo "2. Accessing Variable: \$VARIABLE_NAME"
                echo "    Example: echo \$MY_VAR"
                echo "3. Using Variable: echo \$VARIABLE_NAME"
                echo "    Example: echo \$MY_VAR"
                echo "4. Export Variable: export VARIABLE_NAME"
                echo "    Example: export MY_VAR"
                echo "5. Unset Variable: unset VARIABLE_NAME"
                echo "    Example: unset MY_VAR"
                echo "6. Readonly Variable: readonly VARIABLE_NAME"
                echo "    Example: readonly MY_VAR='Hello World'"
                ;;
            11)
                clear
                echo "Advanced Commands:"
                echo "------------------"
                echo "1. awk - Text processing and pattern matching"
                echo "    Example: awk '/pattern/ {print}' file.txt"
                echo "2. sed - Stream editor for filtering and transforming text"
                echo "    Example: sed 's/old/new/g' file.txt"
                echo "3. find - Search for files in a directory hierarchy"
                echo "    Example: find /path/to/search -name 'filename'"
                echo "4. grep - Search file content for patterns"
                echo "    Example: grep 'pattern' file.txt"
                echo "5. rsync - Remote file copy and synchronization"
                echo "    Example: rsync -avz source/ destination/"
                echo "6. tar - Tape archive utility"
                echo "    Example: tar -cvzf archive.tar.gz /path/to/directory"
                echo "7. zip - Package and compress files"
                echo "    Example: zip archive.zip file1.txt file2.txt"
                echo "8. unzip - Unpack zip archives"
                echo "    Example: unzip archive.zip"
                echo "9. diff - Compare files line by line"
                echo "    Example: diff file1.txt file2.txt"
                echo "10. patch - Apply a diff file to an original"
                echo "    Example: patch file.txt < patch_file.patch"
                echo "11. tee - Redirect output to multiple files or processes"
                echo "    Example: command | tee file.txt"
                echo "12. xargs - Build and execute command lines from standard input"
                echo "    Example: find . -type f -print | xargs rm"
                echo "13. curl - Command line tool for transferring data with URLs"
                echo "    Example: curl -O http://example.com/file.txt"
                echo "14. wget - The non-interactive network downloader"
                echo "    Example: wget http://example.com/file.txt"
                ;;
            12)
                clear
                echo "Disk Management Commands:"
                echo "-------------------------"
                echo "1. fdisk - Manipulate disk partition table"
                echo "    Example: fdisk /dev/sda"
                echo "2. mkfs - Build a Linux filesystem"
                echo "    Example: mkfs.ext4 /dev/sda1"
                echo "3. mount - Mount a filesystem"
                echo "    Example: mount /dev/sda1 /mnt"
                echo "4. umount - Unmount file systems"
                echo "    Example: umount /mnt"
                echo "5. fsck - Filesystem consistency check and repair"
                echo "    Example: fsck /dev/sda1"
                echo "6. blkid - Locate/print block device attributes"
                echo "    Example: blkid /dev/sda1"
                echo "7. parted - Disk partition manipulator"
                echo "    Example: parted /dev/sda"
                echo "8. dd - Convert and copy a file"
                echo "    Example: dd if=/dev/zero of=/dev/sda bs=1M count=100"
                echo "9. hd - ASCII/HEX decimal/ASCII converter"
                echo "    Example: hd /dev/sda1"
                echo "10. badblocks - Search a device for bad blocks"
                echo "    Example: badblocks -v /dev/sda1"
                ;;
            13)
                clear
                echo "System Administration Commands:"
                echo "------------------------------"
                echo "1. systemctl - Control the systemd system and service manager"
                echo "    Example: systemctl start service_name"
                echo "2. journalctl - Query the systemd journal"
                echo "    Example: journalctl -xe"
                echo "3. cron - Daemon to execute scheduled commands"
                echo "    Example: crontab -e"
                echo "4. at - Schedule a command to be run once at a later time"
                echo "    Example: at now + 1 hour"
                echo "5. crontab - Schedule a command or script to run at regular intervals"
                echo "    Example: crontab -l"
                echo "6. shutdown - Halt, power-off or reboot the machine"
                echo "    Example: shutdown -h now"
                echo "7. reboot - Reboot the machine"
                echo "    Example: reboot"
                echo "8. halt - Halt or power-off the machine"
                echo "    Example: halt"
                echo "9. poweroff - Power-off the machine"
                echo "    Example: poweroff"
                echo "10. init - System and service manager"
                echo "    Example: init 0"
                ;;
            14)
                clear
                echo "File Transfer Commands:"
                echo "-----------------------"
                echo "1. scp - Secure copy (remote file copy program)"
                echo "    Example: scp file.txt user@hostname:/remote/path"
                echo "2. sftp - Secure File Transfer Protocol"
                echo "    Example: sftp user@hostname"
                echo "3. rsync - Remote file copy and synchronization"
                echo "    Example: rsync -avz source/ destination/"
                echo "4. wget - The non-interactive network downloader"
                echo "    Example: wget http://example.com/file.txt"
                echo "5. curl - Command line tool for transferring data with URLs"
                echo "    Example: curl -O http://example.com/file.txt"
                echo "6. nc - Arbitrary TCP and UDP connections and listens"
                echo "    Example: nc -vz google.com 80"
                echo "7. ftp - Internet file transfer program"
                echo "    Example: ftp ftp.example.com"
                echo "8. tftp - Trivial file transfer program"
                echo "    Example: tftp -g -r file.txt ftp.example.com"
                ;;
            15)
                clear
                echo "Security Commands:"
                echo "------------------"
                echo "1. passwd - Update a user's authentication token(s)"
                echo "    Example: passwd username"
                echo "2. chage - Change user password expiry information"
                echo "    Example: chage -d 0 username"
                echo "3. fail2ban - Daemon to ban hosts that cause multiple authentication errors"
                echo "    Example: fail2ban-client set sshd banip IP_ADDRESS"
                echo "4. ufw - Uncomplicated Firewall, a user-friendly interface for managing iptables firewall"
                echo "    Example: ufw enable"
                echo "5. iptables - Administration tool for IPv4 packet filtering and NAT"
                echo "    Example: iptables -A INPUT -s IP_ADDRESS -j DROP"
                echo "6. openssl - OpenSSL command line tool"
                echo "    Example: openssl genrsa -out key.pem 2048"
                echo "7. gpg - GNU Privacy Guard command-line tool"
                echo "    Example: gpg --gen-key"
                ;;
            16)
                clear
                echo "Text Editing Commands:"
                echo "----------------------"
                echo "1. nano - Simple text editor in the style of Pico"
                echo "    Example: nano file.txt"
                echo "2. vi - Vi IMproved, a programmers text editor"
                echo "    Example: vi file.txt"
                echo "3. vim - Vi IMproved, a programmers text editor"
                echo "    Example: vim file.txt"
                echo "4. emacs - The extensible, customizable, self-documenting real-time display editor"
                echo "    Example: emacs file.txt"
                ;;
            17)
                break
                ;;
            *)
                echo "Invalid option! Please enter a number between 1 and 17."
                ;;
        esac

        read -n1 -r -p "Press any key to continue..."
    done
}

# Contact Me section
contact_me() {
    clear
    echo "Contact Me"
    echo "=========="
    echo "Discord: https://discord.com/users/1212861654505754697"
    echo "Email: bakergiles3@gmail.com"
    echo "Bakers Development Discord Server: https://discord.gg/EEsqCdwEdc"
    read -p "Press Enter to continue..." choice
}

# Main menu
while true; do
    clear
    echo "Hello, Welcome To, Linux Essentials Installer"
    echo "====================================="
    echo "1. Install All Tools"
    echo "2. Uninstall All Tools"
    echo "3. Install Documentation"
    echo "4. Contact Me"
    echo "5. Exit"
    echo "====================================="
    read -p "Enter your choice (1-5): " choice

    case $choice in
        1)
            check_root
            check_internet
            install_all_tools
            read -p "Press Enter to continue..." choice
            ;;
        2)
            check_root
            uninstall_all_tools
            read -p "Press Enter to continue..." choice
            ;;
        3)
            install_documentation
            ;;
        4)
            contact_me
            ;;
        5)
            echo "Exiting..."
            exit
            ;;
        *)
            echo "Invalid option. Please choose again."
            read -p "Press Enter to continue..." choice
            ;;
    esac
done
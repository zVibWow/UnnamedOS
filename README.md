
# About UnnamedOS
*UnnamedOS* starts as a minimalist bootloader that runs in real mode (BIOS).

# Used programs
 Assembly x86
 NASM
 QEMU

# Compilling the system 
    nasm -f bin boot.asm -o boot.img

# Execute on Qemu
    qemu boot.img

# Developer(s)
*zVibWow - Idea and creator*

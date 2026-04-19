section .data
    tar_art: db " +-----------------+", 10, \
                " |    TAR-01  0.1  |", 10, \
                " +-----------------+", 10, \
                " |  /\_/\          |", 10, \
                " | ( o.o )         |", 10, \
                " |  > ^ <          |", 10, \
                " |  /   \          |", 10, \
                " | /     \         |", 10, \
                " +-------+-------+", 10, \
                " | MTAR  |  RED  |", 10, \
                " +-------+-------+", 10, 0
    
    tar_len equ $ - tar_art 

section .text
    global _start

_start:
    ;print ออกมา
    mov eax, 4          ;อันนี้ syscall
    mov ebx, 1          
    mov ecx, tar_art    
    mov edx, tar_len    ;ความยาว
    int 0x80            ;สั่งรัน
    
    mov eax, 1          
    xor ebx, ebx        
    int 0x80            ;จบงาน

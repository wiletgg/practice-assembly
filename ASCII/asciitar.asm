; ทดสอบ Assembly ART 
section .data
    ; เขียน TAR
    line1 db "  #######     ###     #######  ", 10
    line2 db "     #       #   #    #     #  ", 10
    line3 db "     #      #######   #######  ", 10
    line4 db "     #      #     #   #   #    ", 10
    line5 db "     #      #     #   #    #   ", 10
    
    ; คำนวนความยาว
    art_len equ $ - line1

section .text
    global _start

_start:
    ; พ่นลงจอ
    mov rax, 1          ; syscall: write
    mov rdi, 1          ; stdout
    mov rsi, line1      ; ชี้ไปจุดเริ่มต้น
    mov rdx, art_len    ; ยัดจำนวน byte
    syscall             ; terminal

    ; จบโปรแกรม
    mov rax, 60          ; exit
    xor rdi, rdi        ; exit code 0
    syscall

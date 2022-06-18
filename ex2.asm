;-------------------------------------------------------------------;
;   x86_64 NASM MACHO64                                             ;
;   ex2.asm                                                         ;
;   Hello World                                                     ;
;-------------------------------------------------------------------;
                        global      _main                           ;
;---DATA------------------------------------------------------------;
                        section     .data                           ;
                        msg         db      "H3110 W0r1d", 0x0a     ;
                        len         equ     $ - msg                 ;
;---CODE------------------------------------------------------------;
                        section     .text                           ;
_main:                                                              ;
                        mov         rax,    0x2000004               ; write
                        mov         rdi,    1                       ; stdout
                        mov         rsi,    msg                     ; 
                        mov         rdx,    len                     ; 
                        syscall                                     ;
                        mov         rax,    0x2000001               ; exit signal
                        mov         rdi,    0                       ; exit status
                        syscall                                     ;
;-------------------------------------------------------------------;



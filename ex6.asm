;-------------------------------------------------------------------;
;   x86_64 NASM MACHO64                                             ;
;   ex6.asm                                                         ;
;   Stack                                                           ;
;-------------------------------------------------------------------;
                        global      _main                           ;
;---DATA------------------------------------------------------------;
                        section     .data                           ;
;---CODE------------------------------------------------------------;
                        section     .text                           ;
_main:                                                              ;
                        sub         rsp,        0x5                 ; allocate memory on the stack
                        mov         [rsp + 0],  byte 'H'            ; 
                        mov         [rsp + 1],  byte 'e'            ; 
                        mov         [rsp + 2],  byte 'y'            ; 
                        mov         [rsp + 3],  byte '!'            ; 
                        mov         [rsp + 4],  byte 0xA            ; 
                        mov         rax,        0x2000004           ; stdout
                        mov         rdi,        0x1                 ; write
                        mov         rsi,        rsp                 ; string location
                        mov         rdx,        0x5                 ; string length
                        syscall                                     ;
                        add         rsp,        0x5                 ; deallocate the stack
                        mov         rax,        0x2000001           ; exit signal
                        syscall                                     ;
;-------------------------------------------------------------------;



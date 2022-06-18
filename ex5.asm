;-------------------------------------------------------------------;
;   x86_64 NASM MACHO64                                             ;
;   ex6.asm                                                         ;
;   Stack                                                           ;
;-------------------------------------------------------------------;
                        default rel                                 ;
                        global      _main                           ;
;---DATA------------------------------------------------------------;
                        section     .data                           ;
                        addr        db          'yellow'            ;
;---CODE------------------------------------------------------------;
                        section     .text                           ;
_main:                                                              ;
                        mov         [addr + 0], byte 'H'
                        mov         [addr + 5], byte '!'
                        mov         rax,        0x2000004           ; 
                        mov         rdi,        0x1                 ; 
                        mov         rsi,        addr                ; 
                        mov         rdx,        0x6                 ; 
                        syscall                                     ;
                        mov         rax,        0x2000001           ; exit signal
                        mov         rdi,        33                  ; exit status
                        syscall                                     ;
;-------------------------------------------------------------------;



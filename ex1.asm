;-------------------------------------------------------------------;
;   x86_64 NASM MACHO64                                             ;
;-------------------------------------------------------------------;
                        global      _main                           ;
;---DATA------------------------------------------------------------;
                        section     .data                           ;
                        var         equ     33                      ;
;---CODE------------------------------------------------------------;
                        section     .text                           ;
_main:                                                              ;
                        mov         rax,    0x2000001               ; exit signal
                        mov         rdi,    var                     ;
                        syscall                                     ;
;-------------------------------------------------------------------;



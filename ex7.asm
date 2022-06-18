;-------------------------------------------------------------------;
;   x86_64 NASM MACHO64                                             ;
;   ex7.asm                                                         ;
;   Function Call                                                   ;
;-------------------------------------------------------------------;
                        global      _main                           ;
;---DATA------------------------------------------------------------;
                        section     .data                           ;
;---CODE------------------------------------------------------------;
                        section     .text                           ;
_main:                                                              ;
                        mov         rax,        0x2000001           ; exit signal
                        syscall                                     ;
func:                                                               ;
                        mov         rdi,        42                  ;                       
                        ;push        33                             ; Segmentation fault: because we are overriding the return address
                        pop         rax                             ; pop the return address of the next instruction from the call site into RAX
                        jmp         rax                             ; jump to the address stored into RAX 
                        ;ret                                        ; we could use ret instead of push/jmp. does ret mess with RAX?
;-------------------------------------------------------------------;



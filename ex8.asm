;-------------------------------------------------------------------
;   x86_64 NASM MACHO64                                             
;   ex8.asm                                                         
;   Function Call                                                   
;-------------------------------------------------------------------
                        default     rel
                        global      _main                           
;---DATA------------------------------------------------------------
                        section     .data                           
;---CODE------------------------------------------------------------
                        section     .text                           
_main:                                                              
                        
                        call        func                            ; pushes the address of the next instruction from rip (register instruction pointer) onto the stack and then makes a jump to the function label.
                        mov         rax,        0x2000001           ; exit signal
                        mov         rdi,        255                 ; exit status
                        syscall                                     ;
func:                                                               ;
                        push        rbp                             ; Prologue: push the address of the next instruction into rbp (register base pointer) from the stack, now our return location is free.
                        mov         rbp,        rsp                 ; Prologue: store the location of the stack that is pointing to the pushed return location (next instruction location) into rbp.
                        sub         rsp,        0x7
                        mov         [rsp+0],    byte 'H'
                        mov         [rsp+1],    byte 'e'
                        mov         [rsp+2],    byte 'l'
                        mov         [rsp+3],    byte 'l'
                        mov         [rsp+4],    byte 'o'
                        mov         [rsp+5],    byte '!'
                        mov         [rsp+6],    byte 0xA
                        mov         rax,        0x2000004           ; stdout
                        mov         rdi,        0x1                 ; write
                        mov         rsi,        rsp                 ; string location
                        mov         rdx,        0x7                 ; bytes to write
                        syscall                                     ;
                        add         rsp,        0x7
                        mov         rsp,        rbp                 ; Epilogue: restore the location of the stack that pointed to the return location (next instruction) thus deallocating the stack.
                        pop         rbp                             ; Epilogue: pop the address of the return location back onto the top of the stack to restore the return location.
                        ret                                         ; pops the location of the next instruction onto the rip and jumps to it
;-------------------------------------------------------------------;



.global to_upper_s

to_upper_s:
    mov ip, #0                          @ i = 0

loop:
    ldrb r1, [r0]                       @load
    cmp r1, #0
    beq done

    cmp r1, #97                         @compare to ASCII value
    blt iter                            @iterate if upper

    cmp r1, #122                        @compare to ASCII value
    bgt iter                            @iterate if upper

    sub r1, r1, #32
    strb r1, [r0]                       @store

iter:
    add r0, r0, #1                      @iterate
    b loop                              @restart loop

done:
    bx lr
.global max3_s

max2_s:
    cmp r0, r1         @ a > b
    bgt done           @ r0 > r1
    mov r0, r1         @ r1 <= r0
    b done

max3_s:
    sub sp, sp, #4    @ allocate space
    str lr, [sp]      @ preserve lr
    bl max2_s         @ recurse

    mov r1, r2        @ r2 <= r1
    bl max2_s         @ recurse
    ldr lr, [sp]      @ restore lr
    add sp, sp, #4    @ deallocate

done:
    bx lr
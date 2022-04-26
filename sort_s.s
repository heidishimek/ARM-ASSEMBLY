.global sort_s
.global find_max_index_s

@ r0 = arr
@ r1 = len
@ r2 = i
@ r3 = idx

sort_s:
    sub sp, sp, #16             @ allocate space
    str lr, [sp]                @ preserve lr
    str r4, [sp, #4]            @ preserve r4
    str r5, [sp, #8]            @ preserve r5

done:
    ldr lr, [sp]                @ restore lr
    ldr r5, [sp, #8]            @ restore r5
    ldr r4, [sp, #4]            @ restore r4
    add sp, sp, #16             @ deallocate
    bx lr
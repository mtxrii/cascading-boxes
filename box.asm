.LC0:
        .ascii  "-+\000"
.LC1:
        .ascii  "  \000"
.LC2:
        .ascii  "| |\000"
.LC3:
        .ascii  "+-+\000"
main:
        daddiu  $sp,$sp,-64
        sd      $31,56($sp)
        sd      $fp,48($sp)
        sd      $28,40($sp)
        move    $fp,$sp
        lui     $28,%hi(%neg(%gp_rel(main)))
        daddu   $28,$28,$25
        daddiu  $28,$28,%lo(%neg(%gp_rel(main)))
        move    $2,$4
        sd      $5,24($fp)
        sll     $2,$2,0
        sw      $2,16($fp)
        li      $2,4                        # 0x4
        sw      $2,12($fp)
        li      $4,43                 # 0x2b
        ld      $2,%call16(putchar)($28)
        move    $25,$2
        nop

        sw      $0,0($fp)
        b       .L2
        nop

.L7:
        ld      $2,%got_page(.LC0)($28)
        daddiu  $4,$2,%got_ofst(.LC0)
        ld      $2,%call16(puts)($28)
        move    $25,$2
        nop

        sw      $0,4($fp)
        b       .L3
        nop

.L4:
        ld      $2,%got_page(.LC1)($28)
        daddiu  $4,$2,%got_ofst(.LC1)
        ld      $2,%call16(printf)($28)
        move    $25,$2
        nop

        lw      $2,4($fp)
        addiu   $2,$2,1
        sw      $2,4($fp)
.L3:
        lw      $3,4($fp)
        lw      $2,0($fp)
        slt     $2,$3,$2
        bne     $2,$0,.L4
        nop

        ld      $2,%got_page(.LC2)($28)
        daddiu  $4,$2,%got_ofst(.LC2)
        ld      $2,%call16(puts)($28)
        move    $25,$2
        nop

        sw      $0,8($fp)
        b       .L5
        nop

.L6:
        ld      $2,%got_page(.LC1)($28)
        daddiu  $4,$2,%got_ofst(.LC1)
        ld      $2,%call16(printf)($28)
        move    $25,$2
        nop

        lw      $2,8($fp)
        addiu   $2,$2,1
        sw      $2,8($fp)
.L5:
        lw      $3,8($fp)
        lw      $2,0($fp)
        slt     $2,$3,$2
        bne     $2,$0,.L6
        nop

        ld      $2,%got_page(.LC3)($28)
        daddiu  $4,$2,%got_ofst(.LC3)
        ld      $2,%call16(printf)($28)
        move    $25,$2
        nop

        lw      $2,0($fp)
        addiu   $2,$2,1
        sw      $2,0($fp)
.L2:
        lw      $3,0($fp)
        lw      $2,12($fp)
        slt     $2,$3,$2
        bne     $2,$0,.L7
        nop

        move    $2,$0
        move    $sp,$fp
        ld      $31,56($sp)
        ld      $fp,48($sp)
        ld      $28,40($sp)
        daddiu  $sp,$sp,64
        j       $31
        nop

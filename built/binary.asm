; thumb size: 3262 bytes; src size 4972 bytes
; assembly: 2427 lines
; peep hole pass: 80 instructions removed and 16 updated
; peep hole pass: 7 instructions removed and 0 updated
; peep hole pass: 0 instructions removed and 0 updated


; start
    .startaddr 0x31000
    .hex 708E3B92C615A841C49866C975EE5197 ; magic number
    .hex 22C1B47EC1BB0DE8 ; hex template hash
    .hex 8B437B87736CC15C ; program hash
    .short 9   ; num. globals
    .short 0 ; patched with number of words resulting from assembly
    .word 0 ; reserved
    .word 0 ; reserved
    .word 0 ; reserved
;
; Function <main>
;
    .section code
    b .themain      
    .balign 4
__main__1_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
.themain:
    push {lr}
    push {r5, r6}
    bl _hlp_0
    bl __main__1
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
__main__1_bkpt:
    bkpt 1
__main__1:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
__main__1_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi __main__1_bkpt
__main__1_bkpt_after:
__brkp_8:
    movs r0, #0
    bl Array_::mk
    push {r0}; tmpstore @1
    ldr r0, [r6, #4]
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @1
    str r0, [r6, #4]
    @stackempty locals
__brkp_36:
    movs r0, #0
    str r0, [r6, #12]
    @stackempty locals
__brkp_37:
    bl String_::mkEmpty
    push {r0}; tmpstore @1
    ldr r0, [r6, #8]
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @1
    str r0, [r6, #8]
    @stackempty locals
__brkp_38:
    movs r0, _inline_172_Lit@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _inline_172_Lit@lo
    bl pxt::ptrOfLiteral
    push {r0}; tmpstore @1
    movs r0, #2
    pop {r1} ; tmpref @1
    bl input::onButtonPressed
    @stackempty locals
__brkp_59:
    movs r0, #125
lsls r0, r0, #3
    bl Math_::random
    str r0, [r6, #16]
    @stackempty locals
__brkp_60:
    movs r0, _str11meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str11meta@lo
    bl pxt::ptrOfLiteral
    push {r0} ; proc-arg
    ldr r0, [r6, #16]
    push {r0} ; proc-arg
.proccall21:
    bl _settingsSaveNumber_155
    add sp, #4*2 ; pop locals2
    @stackempty locals
__brkp_61:
    movs r0, _str11meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str11meta@lo
    bl pxt::ptrOfLiteral
    push {r0} ; proc-arg
    ldr r0, [r6, #16]
    push {r0} ; proc-arg
.proccall23:
    bl _writeValue_150
    add sp, #4*2 ; pop locals2
    @stackempty locals
__brkp_62:
    movs r0, _str11meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str11meta@lo
    bl pxt::ptrOfLiteral
    bl filesA::settingsReadNumber
    str r0, [r6, #20]
    @stackempty locals
__brkp_63:
    movs r0, _str12meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str12meta@lo
    bl pxt::ptrOfLiteral
    push {r0} ; proc-arg
    ldr r0, [r6, #20]
    push {r0} ; proc-arg
.proccall25:
    bl _writeValue_150
    add sp, #4*2 ; pop locals2
    @stackempty locals
__brkp_64:
    ldr r0, [r6, #16]
    ldr r1, [r6, #20]
    bl Number_::eq
    push {r0} ; proc-arg
    movs r0, #0
    push {r0} ; proc-arg
.proccall27:
    bl _assert_39
    add sp, #4*2 ; pop locals2
    @stackempty locals
__brkp_65:
    movs r0, _str13meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str13meta@lo
    bl pxt::ptrOfLiteral
    push {r0} ; proc-arg
.proccall29:
    bl _open_154
    add sp, #4*1 ; pop locals1
    push {r0}; tmpstore @1
    ldr r0, [r6, #24]
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @1
    str r0, [r6, #24]
    @stackempty locals
__brkp_66:
    ldr r0, [r6, #24]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    movs r0, _str14meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str14meta@lo
    bl pxt::ptrOfLiteral
    push {r0} ; proc-arg
.proccall31:
    bl _File_writeString_164
    add sp, #4*2 ; pop locals2
    @stackempty locals
__brkp_67:
    ldr r0, [r6, #24]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    movs r0, #0
    push {r0} ; proc-arg
    movs r0, #2
    push {r0} ; proc-arg
.proccall33:
    bl _File_seek_161
    add sp, #4*3 ; pop locals3
    @stackempty locals
__brkp_68:
    ldr r0, [r6, #24]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
.proccall35:
    bl _File_flush_158
    add sp, #4*1 ; pop locals1
    @stackempty locals
__brkp_69:
    ldr r0, [r6, #24]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
.proccall37:
    bl _File_close_159
    add sp, #4*1 ; pop locals1
    @stackempty locals
__brkp_70:
    movs r0, _inline_199_Lit@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _inline_199_Lit@lo
    bl pxt::ptrOfLiteral
    push {r0}; tmpstore @1
    movs r0, #1
    pop {r1} ; tmpref @1
    bl input::onButtonPressed
    @stackempty locals
__brkp_72:
    movs r0, _inline_226_Lit@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _inline_226_Lit@lo
    bl pxt::ptrOfLiteral
    push {r0}; tmpstore @1
    movs r0, #2
    pop {r1} ; tmpref @1
    bl input::onButtonPressed
    @stackempty locals
__brkp_76:
    movs r0, _str18meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str18meta@lo
    bl pxt::ptrOfLiteral
    push {r0}; tmpstore @1
    ldr r0, [r6, #28]
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @1
    str r0, [r6, #28]
    @stackempty locals
__brkp_77:
    movs r0, _inline_228_Lit@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _inline_228_Lit@lo
    bl pxt::ptrOfLiteral
    push {r0}; tmpstore @1
    movs r0, #1
    pop {r1} ; tmpref @1
    bl input::onButtonPressed
    @stackempty locals
__brkp_82:
    movs r0, _str13meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str13meta@lo
    bl pxt::ptrOfLiteral
    push {r0}; tmpstore @1
    ldr r0, [r6, #32]
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @1
    str r0, [r6, #32]
    @stackempty locals
__brkp_83:
    movs r0, _inline_230_Lit@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _inline_230_Lit@lo
    bl pxt::ptrOfLiteral
    push {r0}; tmpstore @1
    movs r0, #1
    pop {r1} ; tmpref @1
    bl input::onButtonPressed
    @stackempty locals
__brkp_87:
    movs r0, _inline_231_Lit@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _inline_231_Lit@lo
    bl pxt::ptrOfLiteral
    push {r0}; tmpstore @1
    movs r0, #2
    pop {r1} ; tmpref @1
    bl input::onButtonPressed
    @stackempty locals
.ret.1:
    @stackempty locals
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function inline
;
    .section code
    .balign 4
_inline_172_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    bl _hlp_0
    bl _inline_172
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_inline_172_bkpt:
    bkpt 1
_inline_172:
    @stackmark func
    @stackmark args
    push {lr}
    movs r0, #0
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
_inline_172_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _inline_172_bkpt
_inline_172_bkpt_after:
__brkp_39:
    ldr r0, [r6, #12]
    push {r0}; tmpstore @1
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #1
    adds r0, r1
    str r0, [r6, #12]
    movs r0, _str6meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str6meta@lo
    bl pxt::ptrOfLiteral
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    bl Number_::toString
    push {r0}; tmpstore @3
    ldr r0, [sp, #4*1] ; tmpref @2
    ldr r1, [sp, #4*0] ; tmpref @3
    bl String_::concat
    push {r0}; tmpstore @4
    ldr r0, [sp, #4*1] ; tmpref @3
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @4
    add sp, #4*3 ; pop locals3
    push {r0}; tmpstore @1
    movs r0, _str7meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str7meta@lo
    bl pxt::ptrOfLiteral
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    pop {r1} ; tmpref @2
    bl String_::concat
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @2
    add sp, #4*1 ; pop locals1
    push {r0}; tmpstore @1
    ldr r0, [r6, #8]
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @1
    str r0, [r6, #8]
    @stackempty locals
__brkp_40:
    ldr r0, [r6, #8]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
.proccall39:
    bl _writeLine_147
    add sp, #4*1 ; pop locals1
    @stackempty locals
__brkp_41:
    ldr r0, [r6, #8]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    ldr r0, [sp, #4*0] ; tmpref @1
    bl filesA::remove
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @2
    add sp, #4*1 ; pop locals1
    @stackempty locals
__brkp_42:
    ldr r0, [r6, #8]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    ldr r0, [sp, #4*0] ; tmpref @1
    bl filesA::readToSerial
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @2
    add sp, #4*1 ; pop locals1
    @stackempty locals
__brkp_43:
    bl String_::mkEmpty
    push {r0} ; proc-arg
.proccall41:
    bl _writeLine_147
    add sp, #4*1 ; pop locals1
    @stackempty locals
__brkp_44:
    movs r0, _str8meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str8meta@lo
    bl pxt::ptrOfLiteral
    movs r1, #150
    bl basic::showString
    @stackempty locals
__brkp_45:
    movs r0, #0
    str r0, [sp, locals@0]
    @stackempty locals
__brkp_46:
.fortop.177:
    ldr r0, [sp, locals@0]
    movs r1, #200
    bl Number_::lt
    cmp r0, #0
    beq .brk.177      
.jmpz43:
__brkp_47:
    bl input::runningTime
    str r0, [sp, locals@1]
    @stackempty locals
__brkp_48:
    movs r0, #1
    bl input::acceleration
    str r0, [sp, locals@2]
    @stackempty locals
__brkp_49:
    ldr r0, [r6, #8]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
.proccall44:
    bl _appendNumber_153
    add sp, #4*2 ; pop locals2
    @stackempty locals
__brkp_50:
    ldr r0, [r6, #8]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    movs r0, _str2meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str2meta@lo
    bl pxt::ptrOfLiteral
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    pop {r1} ; tmpref @2
    bl filesA::appendString
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @2
    add sp, #4*1 ; pop locals1
    @stackempty locals
__brkp_51:
    ldr r0, [r6, #8]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    ldr r1, [sp, locals@0]
    muls r0, r1
    push {r0} ; proc-arg
.proccall46:
    bl _appendNumber_153
    add sp, #4*2 ; pop locals2
    @stackempty locals
__brkp_52:
    ldr r0, [r6, #8]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    bl String_::mkEmpty
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    pop {r1} ; tmpref @2
    bl filesA::appendLine
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @2
    add sp, #4*1 ; pop locals1
    @stackempty locals
__brkp_53:
    movs r0, _str9meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str9meta@lo
    bl pxt::ptrOfLiteral
    push {r0} ; proc-arg
.proccall48:
    bl _writeLine_147
    add sp, #4*1 ; pop locals1
    @stackempty locals
__brkp_54:
    movs r0, #10
    bl basic::pause
    @stackempty locals
.cont.177:
__brkp_55:
    ldr r0, [sp, locals@0]
    movs r1, #1
    adds r0, r1
    str r0, [sp, locals@0]
    @stackempty locals
    b .fortop.177      
.brk.177:
__brkp_56:
    bl String_::mkEmpty
    push {r0} ; proc-arg
.proccall50:
    bl _writeLine_147
    add sp, #4*1 ; pop locals1
    @stackempty locals
__brkp_57:
    ldr r0, [r6, #8]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    ldr r0, [sp, #4*0] ; tmpref @1
    bl filesA::readToSerial
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @2
    add sp, #4*1 ; pop locals1
    @stackempty locals
__brkp_58:
    movs r0, _str10meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str10meta@lo
    bl pxt::ptrOfLiteral
    movs r1, #150
    bl basic::showString
    @stackempty locals
.ret.172:
    @stackempty locals
    add sp, #4*3 ; pop locals3
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function appendNumber
;
    .section code
    .balign 4
_appendNumber_153_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    push {r2}
    bl _hlp_1
    bl _appendNumber_153
    add sp, #4*2 ; pop locals2
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_appendNumber_153_bkpt:
    bkpt 1
_appendNumber_153:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_appendNumber_153_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _appendNumber_153_bkpt
_appendNumber_153_bkpt_after:
__brkp_19:
    ldr r0, [sp, args@1]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    ldr r0, [sp, args@0]
    bl Number_::toString
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    ldr r1, [sp, #4*0] ; tmpref @2
    bl filesA::appendString
    push {r0}; tmpstore @3
    ldr r0, [sp, #4*2] ; tmpref @1
    bl pxt::decr ; *P1 (raw)
    ldr r0, [sp, #4*1] ; tmpref @2
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @3
    add sp, #4*2 ; pop locals2
    @stackempty locals
.ret.153:
    @stackempty locals
    ldr r0, [sp, args@1]
    bl pxt::decr ; *P1 (raw)
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function writeLine
;
    .section code
    .balign 4
_writeLine_147_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    bl _hlp_2
    bl _writeLine_147
    add sp, #4*1 ; pop locals1
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_writeLine_147_bkpt:
    bkpt 1
_writeLine_147:
    @stackmark func
    @stackmark args
    push {lr}
    movs r0, #0
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
_writeLine_147_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _writeLine_147_bkpt
_writeLine_147_bkpt_after:
__brkp_9:
    ldr r0, [sp, args@0]
    bl pxt::incr ; *F1 (raw)
    bl pxtrt::stringToBool
    bl Boolean_::bang
    cmp r0, #0
    beq .else_0_4      
.jmpz52:
__brkp_10:
    bl String_::mkEmpty
    push {r0}; tmpstore @1
    ldr r0, [sp, args@0]
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @1
    str r0, [sp, args@0]
    @stackempty locals
.else_0_4:
.afterif_1_4:
__brkp_11:
    ldr r0, [sp, args@0]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    ldr r0, [sp, #4*0] ; tmpref @1
    bl String_::length
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @2
    add sp, #4*1 ; pop locals1
    movs r1, #2
    adds r0, r1
    movs r1, #32
    bl Number_::mod
    push {r0}; tmpstore @1
    movs r0, #32
    pop {r1} ; tmpref @1
    subs r0, r1
    movs r1, #32
    bl Number_::mod
    str r0, [sp, locals@0]
    @stackempty locals
__brkp_12:
    ldr r0, [sp, args@0]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    ldr r0, [sp, #4*0] ; tmpref @1
    bl serial::writeString
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @2
    add sp, #4*1 ; pop locals1
    @stackempty locals
__brkp_13:
    movs r0, #0
    str r0, [sp, locals@1]
    @stackempty locals
__brkp_14:
.fortop.193:
    ldr r0, [sp, locals@1]
    ldr r1, [sp, locals@0]
    bl Number_::lt
    cmp r0, #0
    beq .brk.193      
.jmpz53:
__brkp_15:
    movs r0, _str2meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str2meta@lo
    bl pxt::ptrOfLiteral
    bl serial::writeString
    @stackempty locals
.cont.193:
__brkp_16:
    ldr r0, [sp, locals@1]
    movs r1, #1
    adds r0, r1
    str r0, [sp, locals@1]
    @stackempty locals
    b .fortop.193      
.brk.193:
__brkp_17:
    movs r0, _str0meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str0meta@lo
    bl pxt::ptrOfLiteral
    bl serial::writeString
    @stackempty locals
.ret.147:
    @stackempty locals
    ldr r0, [sp, args@0]
    bl pxt::decr ; *P1 (raw)
    add sp, #4*2 ; pop locals2
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function inline
;
    .section code
    .balign 4
_inline_199_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    bl _hlp_0
    bl _inline_199
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_inline_199_bkpt:
    bkpt 1
_inline_199:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_inline_199_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _inline_199_bkpt
_inline_199_bkpt_after:
__brkp_71:
    movs r0, _str13meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str13meta@lo
    bl pxt::ptrOfLiteral
    push {r0}; tmpstore @1
    movs r0, _str15meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str15meta@lo
    bl pxt::ptrOfLiteral
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    pop {r1} ; tmpref @2
    add sp, #4*1 ; pop locals1
    bl filesA::appendLine
    @stackempty locals
.ret.199:
    @stackempty locals
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function close
;
    .section code
    .balign 4
_File_close_159_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    bl _hlp_2
    bl _File_close_159
    add sp, #4*1 ; pop locals1
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_File_close_159_bkpt:
    bkpt 1
_File_close_159:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_File_close_159_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _File_close_159_bkpt
_File_close_159_bkpt_after:
__brkp_32:
    ldr r0, [sp, args@0]
    bl pxt::incr ; *F1 (raw)
    movs r1, #1
    bl pxtrt::ldfld
    bl filesA::fsClose
    @stackempty locals
__brkp_33:
    ldr r0, [sp, args@0]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    movs r0, #0
    movs r1, #1
    subs r0, r1
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    movs r1, #1
    pop {r2} ; tmpref @2
    add sp, #4*1 ; pop locals1
    bl pxtrt::stfld
    @stackempty locals
.ret.159:
    @stackempty locals
    ldr r0, [sp, args@0]
    bl pxt::decr ; *P1 (raw)
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function flush
;
    .section code
    .balign 4
_File_flush_158_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    bl _hlp_2
    bl _File_flush_158
    add sp, #4*1 ; pop locals1
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_File_flush_158_bkpt:
    bkpt 1
_File_flush_158:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_File_flush_158_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _File_flush_158_bkpt
_File_flush_158_bkpt_after:
__brkp_31:
    ldr r0, [sp, args@0]
    bl pxt::incr ; *F1 (raw)
    movs r1, #1
    bl pxtrt::ldfld
    bl filesA::fsFlush
    @stackempty locals
.ret.158:
    @stackempty locals
    ldr r0, [sp, args@0]
    bl pxt::decr ; *P1 (raw)
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function seek
;
    .section code
    .balign 4
_File_seek_161_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    push {r2}
    push {r3}
    bl _hlp_3
    bl _File_seek_161
    add sp, #4*3 ; pop locals3
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_File_seek_161_bkpt:
    bkpt 1
_File_seek_161:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_File_seek_161_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _File_seek_161_bkpt
_File_seek_161_bkpt_after:
__brkp_34:
    ldr r0, [sp, args@2]
    bl pxt::incr ; *F1 (raw)
    movs r1, #1
    bl pxtrt::ldfld
    ldr r1, [sp, args@1]
    ldr r2, [sp, args@0]
    bl filesA::fsSeek
    @stackempty locals
.ret.161:
    @stackempty locals
    ldr r0, [sp, args@2]
    bl pxt::decr ; *P1 (raw)
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function writeString
;
    .section code
    .balign 4
_File_writeString_164_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    push {r2}
    bl _hlp_4
    bl _File_writeString_164
    add sp, #4*2 ; pop locals2
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_File_writeString_164_bkpt:
    bkpt 1
_File_writeString_164:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_File_writeString_164_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _File_writeString_164_bkpt
_File_writeString_164_bkpt_after:
__brkp_35:
    ldr r0, [sp, args@1]
    bl pxt::incr ; *F1 (raw)
    movs r1, #1
    bl pxtrt::ldfld
    push {r0}; tmpstore @1
    ldr r0, [sp, args@0]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    ldr r1, [sp, #4*0] ; tmpref @2
    bl filesA::fsWriteString
    push {r0}; tmpstore @3
    ldr r0, [sp, #4*1] ; tmpref @2
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @3
    add sp, #4*2 ; pop locals2
    @stackempty locals
.ret.164:
    @stackempty locals
    ldr r0, [sp, args@1]
    bl pxt::decr ; *P1 (raw)
    ldr r0, [sp, args@0]
    bl pxt::decr ; *P1 (raw)
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function open
;
    .section code
    .balign 4
_open_154_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    bl _hlp_2
    bl _open_154
    add sp, #4*1 ; pop locals1
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_open_154_bkpt:
    bkpt 1
_open_154:
    @stackmark func
    @stackmark args
    push {lr}
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
_open_154_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _open_154_bkpt
_open_154_bkpt_after:
__brkp_20:
    movs r0, C156_VT@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, C156_VT@lo
    bl pxt::mkClassInstance
    push {r0}; tmpstore @1
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
.proccall54:
    bl _File_constructor_168
    add sp, #4*2 ; pop locals2
    ldr r0, [sp, locals@0]
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @1
    str r0, [sp, locals@0]
    @stackempty locals
__brkp_21:
    ldr r0, [sp, locals@0]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
.proccall56:
    bl _File_open_157
    add sp, #4*1 ; pop locals1
    @stackempty locals
__brkp_22:
    ldr r0, [sp, locals@0]
    bl pxt::incr ; *F1 (raw)
.ret.154:
    @stackempty locals
; jmp value (already in r0)
    push {r0}; tmpstore @1
    ldr r0, [sp, locals@0]
    bl pxt::decr ; *P1 (raw)
    ldr r0, [sp, args@0]
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @1
.final_0_10:
    add sp, #4*1 ; pop locals1
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function open
;
    .section code
    .balign 4
_File_open_157_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    bl _hlp_2
    bl _File_open_157
    add sp, #4*1 ; pop locals1
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_File_open_157_bkpt:
    bkpt 1
_File_open_157:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_File_open_157_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _File_open_157_bkpt
_File_open_157_bkpt_after:
__brkp_29:
    ldr r0, [sp, args@0]
    bl pxt::incr ; *F1 (raw)
    movs r1, #1
    bl pxtrt::ldfld
    movs r1, #0
    bl Number_::lt
    cmp r0, #0
    beq .else_0_11      
.jmpz58:
__brkp_30:
    ldr r0, [sp, args@0]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    ldr r0, [sp, args@0]
    bl pxt::incr ; *F1 (raw)
    movs r1, #0
    bl pxtrt::ldfldRef
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*0] ; tmpref @2
    bl filesA::fsOpen
    push {r0}; tmpstore @3
    ldr r0, [sp, #4*1] ; tmpref @2
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @3
    add sp, #4*1 ; pop locals1
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    movs r1, #1
    pop {r2} ; tmpref @2
    add sp, #4*1 ; pop locals1
    bl pxtrt::stfld
    @stackempty locals
.else_0_11:
.afterif_1_11:
.ret.157:
    @stackempty locals
    ldr r0, [sp, args@0]
    bl pxt::decr ; *P1 (raw)
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function inline
;
    .section code
    .balign 4
_File_constructor_168_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    push {r2}
    bl _hlp_4
    bl _File_constructor_168
    add sp, #4*2 ; pop locals2
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_File_constructor_168_bkpt:
    bkpt 1
_File_constructor_168:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_File_constructor_168_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _File_constructor_168_bkpt
_File_constructor_168_bkpt_after:
__brkp_27:
    ldr r0, [sp, args@1]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    ldr r0, [sp, args@0]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    movs r1, #0
    pop {r2} ; tmpref @2
    add sp, #4*1 ; pop locals1
    bl pxtrt::stfldRef
    @stackempty locals
__brkp_28:
    ldr r0, [sp, args@1]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    movs r0, #0
    movs r1, #1
    subs r0, r1
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    movs r1, #1
    pop {r2} ; tmpref @2
    add sp, #4*1 ; pop locals1
    bl pxtrt::stfld
    @stackempty locals
.ret.168:
    @stackempty locals
; jmp value (already in r0)
    push {r0}; tmpstore @1
    ldr r0, [sp, args@1]
    bl pxt::decr ; *P1 (raw)
    ldr r0, [sp, args@0]
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @1
.final_0_12:
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function assert
;
    .section code
    .balign 4
_assert_39_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    push {r2}
    bl _hlp_2
    bl _assert_39
    add sp, #4*2 ; pop locals2
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_assert_39_bkpt:
    bkpt 1
_assert_39:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_assert_39_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _assert_39_bkpt
_assert_39_bkpt_after:
__brkp_3:
    ldr r0, [sp, args@1]
    bl Boolean_::bang
    cmp r0, #0
    beq .else_0_13      
.jmpz59:
__brkp_4:
    movs r0, _str1meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str1meta@lo
    bl pxt::ptrOfLiteral
    push {r0} ; proc-arg
.proccall60:
    bl _log_23
    add sp, #4*1 ; pop locals1
    @stackempty locals
__brkp_5:
    ldr r0, [sp, args@0]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #0
    bl Number_::neq
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @2
    add sp, #4*1 ; pop locals1
    cmp r0, #0
    beq .else_1_13      
.jmpz62:
__brkp_6:
    ldr r0, [sp, args@0]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
.proccall63:
    bl _log_23
    add sp, #4*1 ; pop locals1
    @stackempty locals
.else_1_13:
.afterif_2_13:
__brkp_7:
    movs r0, #98
    bl pxtrt::panic
    @stackempty locals
.else_0_13:
.afterif_3_13:
.ret.39:
    @stackempty locals
    ldr r0, [sp, args@0]
    bl pxt::decr ; *P1 (raw)
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function log
;
    .section code
    .balign 4
_log_23_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    bl _hlp_2
    bl _log_23
    add sp, #4*1 ; pop locals1
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_log_23_bkpt:
    bkpt 1
_log_23:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_log_23_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _log_23_bkpt
_log_23_bkpt_after:
__brkp_1:
    ldr r0, [sp, args@0]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    ldr r0, [sp, #4*0] ; tmpref @1
    bl serial::writeString
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @2
    add sp, #4*1 ; pop locals1
    @stackempty locals
__brkp_2:
    movs r0, _str0meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str0meta@lo
    bl pxt::ptrOfLiteral
    bl serial::writeString
    @stackempty locals
.ret.23:
    @stackempty locals
    ldr r0, [sp, args@0]
    bl pxt::decr ; *P1 (raw)
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function writeValue
;
    .section code
    .balign 4
_writeValue_150_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    push {r2}
    bl _hlp_1
    bl _writeValue_150
    add sp, #4*2 ; pop locals2
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_writeValue_150_bkpt:
    bkpt 1
_writeValue_150:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_writeValue_150_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _writeValue_150_bkpt
_writeValue_150_bkpt_after:
__brkp_18:
    ldr r0, [sp, args@1]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    movs r0, _str3meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str3meta@lo
    bl pxt::ptrOfLiteral
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    pop {r1} ; tmpref @2
    bl String_::concat
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @2
    add sp, #4*1 ; pop locals1
    push {r0}; tmpstore @1
    ldr r0, [sp, args@0]
    bl Number_::toString
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    ldr r1, [sp, #4*0] ; tmpref @2
    bl String_::concat
    push {r0}; tmpstore @3
    ldr r0, [sp, #4*2] ; tmpref @1
    bl pxt::decr ; *P1 (raw)
    ldr r0, [sp, #4*1] ; tmpref @2
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @3
    add sp, #4*2 ; pop locals2
    push {r0} ; proc-arg
.proccall65:
    bl _writeLine_147
    add sp, #4*1 ; pop locals1
    @stackempty locals
.ret.150:
    @stackempty locals
    ldr r0, [sp, args@1]
    bl pxt::decr ; *P1 (raw)
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function settingsSaveNumber
;
    .section code
    .balign 4
_settingsSaveNumber_155_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    push {r1}
    push {r2}
    bl _hlp_1
    bl _settingsSaveNumber_155
    add sp, #4*2 ; pop locals2
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_settingsSaveNumber_155_bkpt:
    bkpt 1
_settingsSaveNumber_155:
    @stackmark func
    @stackmark args
    push {lr}
    movs r0, #0
    push {r0} ;loc
    @stackmark locals
_settingsSaveNumber_155_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _settingsSaveNumber_155_bkpt
_settingsSaveNumber_155_bkpt_after:
__brkp_23:
    movs r0, _str4meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str4meta@lo
    bl pxt::ptrOfLiteral
    bl filesA::createDirectory
    @stackempty locals
__brkp_24:
    movs r0, _str5meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str5meta@lo
    bl pxt::ptrOfLiteral
    push {r0}; tmpstore @1
    ldr r0, [sp, args@1]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    ldr r1, [sp, #4*0] ; tmpref @2
    bl String_::concat
    push {r0}; tmpstore @3
    ldr r0, [sp, #4*1] ; tmpref @2
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @3
    add sp, #4*2 ; pop locals2
    push {r0}; tmpstore @1
    ldr r0, [sp, locals@0]
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @1
    str r0, [sp, locals@0]
    @stackempty locals
__brkp_25:
    ldr r0, [sp, locals@0]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    ldr r0, [sp, #4*0] ; tmpref @1
    bl filesA::remove
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @2
    add sp, #4*1 ; pop locals1
    @stackempty locals
__brkp_26:
    ldr r0, [sp, locals@0]
    bl pxt::incr ; *F1 (raw)
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
.proccall67:
    bl _appendNumber_153
    add sp, #4*2 ; pop locals2
    @stackempty locals
.ret.155:
    @stackempty locals
    ldr r0, [sp, locals@0]
    bl pxt::decr ; *P1 (raw)
    ldr r0, [sp, args@1]
    bl pxt::decr ; *P1 (raw)
    add sp, #4*1 ; pop locals1
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function inline
;
    .section code
    .balign 4
_inline_226_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    bl _hlp_0
    bl _inline_226
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_inline_226_bkpt:
    bkpt 1
_inline_226:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_inline_226_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _inline_226_bkpt
_inline_226_bkpt_after:
__brkp_73:
    movs r0, _str16meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str16meta@lo
    bl pxt::ptrOfLiteral
    movs r1, #150
    bl basic::showString
    @stackempty locals
__brkp_74:
    movs r0, _str13meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str13meta@lo
    bl pxt::ptrOfLiteral
    bl filesA::readToSerial
    @stackempty locals
__brkp_75:
    movs r0, _str17meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str17meta@lo
    bl pxt::ptrOfLiteral
    bl serial::writeString
    @stackempty locals
.ret.226:
    @stackempty locals
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function inline
;
    .section code
    .balign 4
_inline_228_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    bl _hlp_0
    bl _inline_228
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_inline_228_bkpt:
    bkpt 1
_inline_228:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_inline_228_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _inline_228_bkpt
_inline_228_bkpt_after:
__brkp_78:
    movs r0, _str8meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str8meta@lo
    bl pxt::ptrOfLiteral
    movs r1, #150
    bl basic::showString
    @stackempty locals
__brkp_79:
    ldr r0, [r6, #28]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    movs r0, _str15meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str15meta@lo
    bl pxt::ptrOfLiteral
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    pop {r1} ; tmpref @2
    bl filesA::appendLine
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @2
    add sp, #4*1 ; pop locals1
    @stackempty locals
__brkp_80:
    movs r0, _str19meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str19meta@lo
    bl pxt::ptrOfLiteral
    bl serial::writeString
    @stackempty locals
__brkp_81:
    ldr r0, [r6, #28]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    ldr r0, [sp, #4*0] ; tmpref @1
    bl filesA::readToSerial
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @2
    add sp, #4*1 ; pop locals1
    @stackempty locals
.ret.228:
    @stackempty locals
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function inline
;
    .section code
    .balign 4
_inline_230_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    bl _hlp_0
    bl _inline_230
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_inline_230_bkpt:
    bkpt 1
_inline_230:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_inline_230_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _inline_230_bkpt
_inline_230_bkpt_after:
__brkp_84:
    ldr r0, [r6, #32]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    movs r0, _str15meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str15meta@lo
    bl pxt::ptrOfLiteral
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    pop {r1} ; tmpref @2
    bl filesA::appendLine
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @2
    add sp, #4*1 ; pop locals1
    @stackempty locals
__brkp_85:
    movs r0, _str20meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str20meta@lo
    bl pxt::ptrOfLiteral
    bl serial::writeString
    @stackempty locals
__brkp_86:
    movs r0, _str20meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str20meta@lo
    bl pxt::ptrOfLiteral
    movs r1, #150
    bl basic::showString
    @stackempty locals
.ret.230:
    @stackempty locals
    pop {pc}
    @stackempty func
    @stackempty args
;
; Function inline
;
    .section code
    .balign 4
_inline_231_Lit:
    .short 0xffff, 0x0000   ; action literal
    @stackmark litfunc
    push {lr}
    push {r5, r6}
    bl _hlp_0
    bl _inline_231
    pop {r6, r5}
    pop {pc}
    @stackempty litfunc
.section code
_inline_231_bkpt:
    bkpt 1
_inline_231:
    @stackmark func
    @stackmark args
    push {lr}
    @stackmark locals
_inline_231_locals:
    ldr r0, [r6, #0]
    lsls r0, r0, #30
    bmi _inline_231_bkpt
_inline_231_bkpt_after:
__brkp_88:
    ldr r0, [r6, #32]
    bl pxt::incr ; *F1 (raw)
    push {r0}; tmpstore @1
    ldr r0, [sp, #4*0] ; tmpref @1
    bl filesA::readToSerial
    push {r0}; tmpstore @2
    ldr r0, [sp, #4*1] ; tmpref @1
    bl pxt::decr ; *P1 (raw)
    pop {r0} ; tmpref @2
    add sp, #4*1 ; pop locals1
    @stackempty locals
__brkp_89:
    movs r0, _str17meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str17meta@lo
    bl pxt::ptrOfLiteral
    bl serial::writeString
    @stackempty locals
__brkp_90:
    movs r0, _str16meta@hi  ; ldptr
    lsls r0, r0, #8
    adds r0, _str16meta@lo
    bl pxt::ptrOfLiteral
    movs r1, #150
    bl basic::showString
    @stackempty locals
.ret.231:
    @stackempty locals
    pop {pc}
    @stackempty func
    @stackempty args
        .balign 4
C156_VT:
        .short 12  ; size in bytes
        .byte 2, 0  ; num. methods
        .word C156_IfaceVT
        .word pxt::RefRecord_destroy|1
        .word pxt::RefRecord_print|1
        .byte 1,0
        .balign 4
C156_IfaceVT:
    .section code
_hlp_0:
    @stackmark args
    push {lr}
    mov r5, r0
    bl pxtrt::getGlobalsPtr
    mov r6, r0
    pop {pc}
    @stackempty args
    .section code
_hlp_1:
    @stackmark args
    push {lr}
    mov r5, r0
ldr r0, [sp, args@1]
bl pxt::incr
    bl pxtrt::getGlobalsPtr
    mov r6, r0
    pop {pc}
    @stackempty args
    .section code
_hlp_2:
    @stackmark args
    push {lr}
    mov r5, r0
ldr r0, [sp, args@0]
bl pxt::incr
    bl pxtrt::getGlobalsPtr
    mov r6, r0
    pop {pc}
    @stackempty args
    .section code
_hlp_3:
    @stackmark args
    push {lr}
    mov r5, r0
ldr r0, [sp, args@2]
bl pxt::incr
    bl pxtrt::getGlobalsPtr
    mov r6, r0
    pop {pc}
    @stackempty args
    .section code
_hlp_4:
    @stackmark args
    push {lr}
    mov r5, r0
ldr r0, [sp, args@1]
bl pxt::incr
ldr r0, [sp, args@0]
bl pxt::incr
    bl pxtrt::getGlobalsPtr
    mov r6, r0
    pop {pc}
    @stackempty args
_js_end:
.balign 4
_str0meta:
 .short 0xffff, 2
_str0:
 .string "\x0d\n"
.balign 4
_str1meta:
 .short 0xffff, 16
_str1:
 .string "ASSERTION FAILED"
.balign 4
_str2meta:
 .short 0xffff, 1
_str2:
 .string " "
.balign 4
_str3meta:
 .short 0xffff, 1
_str3:
 .string ":"
.balign 4
_str4meta:
 .short 0xffff, 8
_str4:
 .string "settings"
.balign 4
_str5meta:
 .short 0xffff, 9
_str5:
 .string "settings/"
.balign 4
_str6meta:
 .short 0xffff, 4
_str6:
 .string "data"
.balign 4
_str7meta:
 .short 0xffff, 4
_str7:
 .string ".csv"
.balign 4
_str8meta:
 .short 0xffff, 1
_str8:
 .string "o"
.balign 4
_str9meta:
 .short 0xffff, 1
_str9:
 .string "."
.balign 4
_str10meta:
 .short 0xffff, 2
_str10:
 .string ":)"
.balign 4
_str11meta:
 .short 0xffff, 4
_str11:
 .string "test"
.balign 4
_str12meta:
 .short 0xffff, 7
_str12:
 .string "serTest"
.balign 4
_str13meta:
 .short 0xffff, 10
_str13:
 .string "output.txt"
.balign 4
_str14meta:
 .short 0xffff, 13
_str14:
 .string "writeString\x0d\n"
.balign 4
_str15meta:
 .short 0xffff, 5
_str15:
 .string "hello"
.balign 4
_str16meta:
 .short 0xffff, 1
_str16:
 .string "H"
.balign 4
_str17meta:
 .short 0xffff, 2
_str17:
 .string "Hi"
.balign 4
_str18meta:
 .short 0xffff, 8
_str18:
 .string "out2.txt"
.balign 4
_str19meta:
 .short 0xffff, 1
_str19:
 .string "["
.balign 4
_str20meta:
 .short 0xffff, 1
_str20:
 .string "W"
_program_end:
    .balign 16
    .hex 41140E2FB82FA2BB
    .short 156
    .short 4796
    .short 0, 0   ; future use
_stored_program: .string "..."

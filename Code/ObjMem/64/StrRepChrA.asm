; ==================================================================================================
; Title:      StrEndsWithA.asm
; Author:     G. Friedrich
; Version:    C.1.1
; Notes:      Version C.1.1, May 2020
;               - First release.
; ==================================================================================================


% include @Environ(OBJASM_PATH)\\Code\\OA_Setup64.inc

TARGET_STR_TYPE = STR_TYPE_ANSI
TARGET_STR_AFFIX textequ <A>
ProcName equ <StrRepChrA>

% include &ObjMemPath&X\StrRepChr.asm

end

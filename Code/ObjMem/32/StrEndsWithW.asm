; ==================================================================================================
; Title:      StrEndsWithW.asm
; Author:     G. Friedrich
; Version:    C.1.1
; Notes:      Version C.1.1, April 2020
;               - First release.
; ==================================================================================================


% include @Environ(OBJASM_PATH)\\Code\\OA_Setup32.inc

TARGET_STR_TYPE = STR_TYPE_WIDE
TARGET_STR_AFFIX textequ <W>
ProcName equ <StrEndsWithW>

% include &ObjMemPath&X\StrEndsWith.asm

end

; ==================================================================================================
; Title:      StrCopyA.asm
; Author:     G. Friedrich
; Version:    C.1.0
; Notes:      Version C.1.0, October 2017
;               - First release.
; ==================================================================================================


% include @Environ(OBJASM_PATH)\\Code\\OA_Setup64.inc
% include &ObjMemPath&ObjMem.cop

.code

; ��������������������������������������������������������������������������������������������������
; Procedure:  StrCopyA
; Purpose:    Copy an ANSI string to a destination buffer.
; Arguments:  Arg1: Destrination ANSI string.
;             Arg2: Source ANSI string.
; Return:     Nothing.

align ALIGN_CODE
StrCopyA proc pDstStrA:POINTER, pSrcStrA:POINTER
  invoke StrSize, rdx
  invoke MemShift, pDstStrA, pSrcStrA, eax
  ret
StrCopyA endp

end

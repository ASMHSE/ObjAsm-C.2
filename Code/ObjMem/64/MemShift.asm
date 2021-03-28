; ==================================================================================================
; Title:      MemShift.asm
; Author:     G. Friedrich
; Version:    C.1.0
; Notes:      Version C.1.0, October 2017
;               - First release.
; ==================================================================================================


% include @Environ(OBJASM_PATH)\\Code\\OA_Setup64.inc
% include &ObjMemPath&ObjMem.cop

.code

; ��������������������������������������������������������������������������������������������������
; Procedure:  MemShift
; Purpose:    Copies a memory block from a source to a destination buffer.
;             Source and destination may overlap.
;             Destination buffer must be at least as large as number of bytes to copy, otherwise a
;             fault may be triggered.
; Arguments:  Arg1: -> Destination buffer.
;             Arg2: -> Source buffer.
;             Arg3: Number of bytes to be copied.
; Return:     Nothing.

align ALIGN_CODE
MemShift proc uses rdi rsi pDstMem:POINTER, pSrcMem:POINTER, dByteCount:DWORD
  mov rdi, rcx                                          ;rdi -> DstMem
  mov rsi, rdx                                          ;rsi -> SrcMem
  mov ecx, r8d                                          ;ecx = dByteCount
  mov r9d, r8d
  cmp rsi, rdi
  je @@0 
  ja @@1
  std
  lea rsi, [rsi + rcx - sizeof(QWORD)]
  lea rdi, [rdi + rcx - sizeof(QWORD)]
  shr ecx, $Log2(sizeof(QWORD))
  rep movsq
  add rdi, sizeof(DWORD)
  add rsi, sizeof(DWORD)
  test r9d, 4
  jz @F
  movsd
@@:    
  add rdi, sizeof(WORD)
  add rsi, sizeof(WORD)
  test r9d, 2
  jz @F
  movsw
@@:
  add rdi, sizeof(BYTE)
  add rsi, sizeof(BYTE)
  test r9d, 1
  jz @F
  movsb
@@:
  cld
@@0:
  ret

@@1:
  shr ecx, 3
  rep movsq
  test r9d, 4
  jz @F
  movsd
@@:    
  test r9d, 2
  jz @F
  movsw
@@:
  test r9d, 1
  jz @F
  movsb
@@:
  ret
MemShift endp

end

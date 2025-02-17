; ==================================================================================================
; Title:      Base64Decode.asm
; Author:     G. Friedrich
; Version:    C.1.0
; Notes:      Version C.1.0, November 2023
;               - First release.
; ==================================================================================================


% include @Environ(OBJASM_PATH)\\Code\\OA_Setup32.inc
TARGET_STR_TYPE = STR_TYPE_WIDE
% include &ObjMemPath&ObjMemWin.cop

.code
; 覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧覧
; Procedure:  Base64Decode
; Purpose:    Decode a data stream using the BASE64 algoritm.
; Arguments:  Arg1: -> Encoded data buffer.
;             Arg2: Encoded data size in BYTEs (always a multiple of 4).
; Return:     xax -> Decoded buffer. When no longer needed, it should be freed using MemFree.
;             ecx = Decoded buffer size in BYTEs.
; Links:      https://en.wikipedia.org/wiki/Base64
;             https://datatracker.ietf.org/doc/html/rfc4648

% include &ObjMemPath&Common\\Base64Decode_X.inc

end

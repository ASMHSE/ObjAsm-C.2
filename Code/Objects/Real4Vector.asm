; ==================================================================================================
; Title:      Real4Vector.asm
; Author:     G. Friedrich
; Version:    C.1.0
; Purpose:    ObjAsm compilation file for Real4Vector object.
; Notes:      Version C.1.0, February 2024
;             - First release.
; ==================================================================================================


% include Objects.cop

;Add here all files that build the inheritance path and referenced objects
LoadObjects Primer
LoadObjects Stream
LoadObjects Vector

;Add here the file that defines the object(s) to be included in the library
MakeObjects Real4Vector

end
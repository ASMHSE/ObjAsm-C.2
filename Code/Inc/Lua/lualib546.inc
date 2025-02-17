;Include file created by h2incX, Version C.01.00, 02/12/2023 12:17
;(C) 2018-today by Biterider, 2005-2009 by Japheth
;Source file: 'lualib.h', last modified: 02/12/2023 12:17


LUA_VERSUFFIX equ <"_" LUA_VERSION_MAJOR "_" LUA_VERSION_MINOR>
@DefProto LUA_IMPORT_ATTR, luaopen_base, WIN_STD_CALL_CONV,, <:ptr lua_State>, 4
LUA_COLIBNAME equ <"coroutine">
@DefProto LUA_IMPORT_ATTR, luaopen_coroutine, WIN_STD_CALL_CONV,, <:ptr lua_State>, 4
LUA_TABLIBNAME equ <"table">
@DefProto LUA_IMPORT_ATTR, luaopen_table, WIN_STD_CALL_CONV,, <:ptr lua_State>, 4
LUA_IOLIBNAME equ <"io">
@DefProto LUA_IMPORT_ATTR, luaopen_io, WIN_STD_CALL_CONV,, <:ptr lua_State>, 4
LUA_OSLIBNAME equ <"os">
@DefProto LUA_IMPORT_ATTR, luaopen_os, WIN_STD_CALL_CONV,, <:ptr lua_State>, 4
LUA_STRLIBNAME equ <"string">
@DefProto LUA_IMPORT_ATTR, luaopen_string, WIN_STD_CALL_CONV,, <:ptr lua_State>, 4
LUA_UTF8LIBNAME equ <"utf8">
@DefProto LUA_IMPORT_ATTR, luaopen_utf8, WIN_STD_CALL_CONV,, <:ptr lua_State>, 4
LUA_MATHLIBNAME equ <"math">
@DefProto LUA_IMPORT_ATTR, luaopen_math, WIN_STD_CALL_CONV,, <:ptr lua_State>, 4
LUA_DBLIBNAME equ <"debug">
@DefProto LUA_IMPORT_ATTR, luaopen_debug, WIN_STD_CALL_CONV,, <:ptr lua_State>, 4
LUA_LOADLIBNAME equ <"package">
@DefProto LUA_IMPORT_ATTR, luaopen_package, WIN_STD_CALL_CONV,, <:ptr lua_State>, 4
@DefProto LUA_IMPORT_ATTR, luaL_openlibs, WIN_STD_CALL_CONV,, <:ptr lua_State>, 4

if not Defined(lua_assert)
  lua_assert macro x
    exitm <(0)>
  endm
endif
 
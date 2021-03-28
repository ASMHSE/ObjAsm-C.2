if exist %ProjectName%.obj (
  echo Linking object modules to !TARGET_BIN_FORMAT!-file ...
  if not [!LogFile!] == [] (
    echo Linking object modules to !TARGET_BIN_FORMAT!-file ...>> !LogFile!
  )

  if !TARGET_BIN_FORMAT! == DLL set OptDLL=/DLL /DEF:!ProjectName!.def
  if exist !ProjectName!.res set AuxRes=!ProjectName!.res

  if [!LogFile!] == [] (
    call !Linker! @"%OBJASM_PATH%\Build\Options\OPT_LNK_!TARGET_MODE!_!TARGET_BITNESS!.txt" !OptDLL! !ProjectName!.obj !AuxRes!
  ) else (
    call !Linker! @"%OBJASM_PATH%\Build\Options\OPT_LNK_!TARGET_MODE!_!TARGET_BITNESS!.txt" !OptDLL! !ProjectName!.obj !AuxRes!>> !LogFile!
    echo.>> !LogFile!
  )
)

call "%VS140COMNTOOLS%..\..\VC\vcvarsall.bat" x64 10.0.15063.0

cd win
nmake "TCL=%BUILD_PREFIX%\library" TCL_VERSION=8.6 TCL_VERSION_NO_DOTS=86 MACHINE=AMD64
nmake install "TCL=%PREFIX%\library" TCL_VERSION=8.6 TCL_VERSION_NO_DOTS=86 MACHINE=AMD64
rem nmake "TCL=%BUILD_PREFIX%\library"  MACHINE=AMD64
rem nmake install "TCL=%PREFIX%\library"  MACHINE=AMD64

cd ..
copy demos %PREFIX%\library\lib\tkdnd2.9
copy doc %PREFIX%\library\lib\tkdnd2.9
mkdir %PREFIX%\tcl\tkdnd2.9
move %PREFIX%\library\lib\tkdnd2.9\* %PREFIX%\tcl\tkdnd2.9

cp CMakeLists.txt CMakeLists.bak

# patch for macOSX
sed -i".bak" '/-fobjc-gc/d' CMakeLists.txt
sed -i".bak" 's/SET ( CMAKE_OSX_ARCHITECTURES "x86_64;i386" )/SET ( CMAKE_OSX_ARCHITECTURES "x86_64" )/g' CMakeLists.txt

cd cmake

mkdir release-nmake-x86_64
cd    release-nmake-x86_64
cmake -G "Unix Makefiles" \
    -D TCL_TCLSH=${BUILD_PREFIX}/bin/tclsh \
    -D TCL_INCLUDE_PATH=${BUILD_PREFIX}/include \
    -D TCL_STUB_LIBRARY=${BUILD_PREFIX}/lib/libtclstub8.6.a \
    -D TCL_LIBRARY=${BUILD_PREFIX}/lib \
    -D TK_WISH=${BUILD_PREFIX}/bin/wish \
    -D TK_INCLUDE_PATH=${BUILD_PREFIX}/include \
    -D TK_STUB_LIBRARY=${BUILD_PREFIX}/lib/libtkstub8.6.a \
    -D TK_LIBRARY=${BUILD_PREFIX}/lib \
    -D CMAKE_INSTALL_PREFIX=${BUILD_PREFIX}/lib/tk8.6 \
    -D CMAKE_BUILD_TYPE=Release ../..
make install
cd ../..

cp -R demos ${BUILD_PREFIX}/lib/tk8.6/$PKG_NAME$PKG_VERSION
cp -R doc ${BUILD_PREFIX}/lib/tk8.6/$PKG_NAME$PKG_VERSION

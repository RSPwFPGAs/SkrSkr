rm build -rf
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
ln -s ../blob
ln -s ../weight
make -j16

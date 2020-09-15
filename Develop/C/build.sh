if [ -f "ap_int/master.zip" ]; then
    echo "ap_int lib exists!"
else
    mkdir ap_int
    cd ap_int/
    wget https://github.com/Xilinx/HLS_arbitrary_Precision_Types/archive/master.zip
    unzip master.zip
    cd ..
fi

rm build -rf
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
ln -s ../blob
ln -s ../weight
make -j16

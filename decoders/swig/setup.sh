#!/usr/bin/env bash

if [ ! -d kenlm ]; then
    git clone https://github.com/kpu/kenlm.git
    cd kenlm/
    git checkout df2d717e95183f79a90b2fa6e4307083a351ca6a
    cd ..
    echo -e "\n"
fi

if [ ! -d openfst-win-1.6.3.1 ]; then
    echo "Download and extract openfst ..."
    # wget http://www.openfst.org/twiki/pub/FST/FstDownload/openfst-1.6.3.tar.gz
    # tar -xzvf openfst-1.6.3.tar.gz
    wget -O openfst-win-1.6.3.1.zip https://codeload.github.com/kkm000/openfst/zip/win/1.6.3.1
    unzip openfst-win-1.6.3.1.zip
    echo -e "\n"
fi

if [ ! -d ThreadPool ]; then
    git clone https://github.com/progschj/ThreadPool.git
    echo -e "\n"
fi

echo "Install decoders ..."
python setup.py install --num_processes 4

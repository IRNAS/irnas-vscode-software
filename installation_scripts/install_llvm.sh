#! /usr/bin/env bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    wget https://apt.llvm.org/llvm.sh
    sudo chmod +x llvm.sh
    sudo ./llvm.sh 18 all
    rm llvm.sh
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install clang-format@18
else
    echo "Unsupported platform, exiting"
    return 1
fi

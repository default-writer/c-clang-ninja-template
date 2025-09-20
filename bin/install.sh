#!/usr/bin/env bash
set -e
wget https://apt.llvm.org/llvm.sh
chmod +x llvm.sh
sudo ./llvm.sh 21 all
sudo ln -s /usr/bin/lldb-dap-21 /usr/bin/lldb-dap 
rm ./llvm.sh
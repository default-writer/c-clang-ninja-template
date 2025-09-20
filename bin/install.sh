#!/usr/bin/env bash
set -e
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y lsb-release wget gpg gcc make 
wget https://apt.llvm.org/llvm.sh
chmod +x llvm.sh
sudo ./llvm.sh 21 all
if [[ ! -f "/usr/bin/lldb-dap" ]]; then
   sudo ln -s /usr/bin/lldb-dap-21 /usr/bin/lldb-dap
fi
rm ./llvm.sh
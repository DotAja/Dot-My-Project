#!/bin/bash

echo "Tanya owner untuk kata sandi"
echo "Masukkan kata sandi:"
read -s script_password

if [ "$script_password" == "dot" ]; then
    echo "Kata sandi benar"
    clear
    echo "Masukkan nama worker klean:"
    read worker_name
    
    echo "Masukkan wallet klean:"
    read wallet_address
    
    # Sisanya dari skrip Anda di sini
    mkdir kontol
    cd kontol
    wget https://github.com/cpu-pool/cpuminer-opt-cpupower/releases/download/1.4/Cpuminer-opt-cpu-pool-linux64.tar.gz
    tar zxvf Cpuminer-opt-cpu-pool-linux64.tar.gz
    clear
    echo -e "\033[1;31m ##############################################"
    echo "#####      #####    ########                            "
    echo "##   ##  ##     ##     ##                               "
    echo "##   ##  ##     ##     ##         ####    ####    ####  "
    echo "##   ##  ##     ##     ##        ##  ##      ##  ##  ## "
    echo "##   ##  ##     ##     ##        ######     ##   ###### "
    echo "#####      #####       ##        ##  ##   ##     ##  ## "
    echo -e "            \033[1;32m  MINING BERJALAN...\n\n"
    ./cpuminer -a yespower -o stratum+tcp://na.mining4people.com:3338 --wallet $wallet_address.$worker_name
else
    echo "Kata sandi salah tolol"
fi

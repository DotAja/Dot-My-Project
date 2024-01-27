#!/bin/bash
echo "tanya owner untuk kata sandi"
echo "Masukkan kata sandi:"
read -s script_password

if [ "$script_password" == "dot" ]; then
    echo "Kata sandi benar"
    clear
    echo "Masukkan wallet klean:"
    read wallet_address
    
    # Sisanya dari skrip Anda di sini
    wget https://github.com/doktor83/SRBMiner-Multi/releases/download/2.3.5/SRBMiner-Multi-2-3-5-Linux.tar.xz
    tar -xvf SRBMiner-Multi-2-3-5-Linux.tar.xz
    cd SRBMiner-Multi-2-3-5
    clear
    echo -e "\033[1;31m ##############################################"
    echo "#####      #####    ########                            "
    echo "##   ##  ##     ##     ##                               "
    echo "##   ##  ##     ##     ##         ####    ####    ####  "
    echo "##   ##  ##     ##     ##        ##  ##      ##  ##  ## "
    echo "##   ##  ##     ##     ##        ######     ##   ###### "
    echo "#####      #####       ##        ##  ##   ##     ##  ## "
    echo -e "            \033[1;32m  MINING BERJALAN...\n\n"
    ./SRBMiner-MULTI -a yespower -o stratum+tcp://na.mining4people.com:3338 --wallet $wallet_address
else
    echo "Kata sandi salah tolol"
fi

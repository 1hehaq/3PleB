#!/bin/bash
# Author: 1hehaq

# Banner
echo -e "
\033[1;32m
┌───────────────────────────────────────────────────────────────────────────────────┐
│                                                                                   │
│ ░▒▓███████▓▒░  ░▒▓███████▓▒░  ░▒▓█▓▒░        ░▒▓████████▓▒░       ░▒▓███████▓▒░   │
│        ░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░        ░▒▓█▓▒░              ░▒▓█▓▒░░▒▓█▓▒░  │
│        ░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░        ░▒▓█▓▒░              ░▒▓█▓▒░░▒▓█▓▒░  │
│ ░▒▓███████▓▒░  ░▒▓███████▓▒░  ░▒▓█▓▒░        ░▒▓██████▓▒░         ░▒▓███████▓▒░   │
│        ░▒▓█▓▒░ ░▒▓█▓▒░        ░▒▓█▓▒░        ░▒▓█▓▒░              ░▒▓█▓▒░░▒▓█▓▒░  │
│        ░▒▓█▓▒░ ░▒▓█▓▒░        ░▒▓█▓▒░        ░▒▓█▓▒░              ░▒▓█▓▒░░▒▓█▓▒░  │
│ ░▒▓███████▓▒░  ░▒▓█▓▒░        ░▒▓████████▓▒░ ░▒▓████████▓▒░       ░▒▓███████▓▒░   │
│                                                                                   │
└───────────────────────────────────────────────────────────────────────────────────┘
\033[0m"

echo -e "\t┌──────────────────────────────────────┐"
echo -e "\t│\e[1;34m Created by https://github.com/1hehaq \e[0m│"
echo -e "\t└──────────────────────────────────────┘"
echo -e "\n"

# For Installing packages
install_packages() {
    packages=("go" "cmake" "pip" "cargo")

    for package in "${packages[@]}"; do
        if ! command -v $package > /dev/null 2>&1; then
            echo -e "\\033[38;5;133m[!] $package is not installed. Preparing to install...\e[0m"
            start_time=$(date +%s)
            case $package in
                go) sudo apt-get install -y golang ;;
                cmake) sudo apt-get install -y cmake ;;
                pip) sudo apt-get install -y python3-pip ;;
                cargo) sudo apt install -y cargo ;;
            esac
            install_status=$?
            end_time=$(date +%s)
            time_diff=$((end_time - start_time))
            if [ $install_status -eq 0 ]
            then
                echo -e "\e[32m[*] $package installed in $time_diff seconds\e[0m"
            else
                echo -e "\e[31m[!] Unable to install $package, please try manually\e[0m"
            fi
        else
            echo -e "\e[33m[^] $package is already installed in your system!\e[0m"
        fi
    done
}

# For Installing tools
install_tools() {
  tools=("x8" "urldedupe" "qsreplace" "gau" "gf" "waybackurls" "uro" "ffuf" "anew" "subfinder" "httpx" "nmap" "dirsearch" "amass" "sublist3r" "assetfinder" "nuclei" "massdns" "shuffledns" "paramspider" "arjun" "katana" "sqlmap" "ghauri")

  for tool in "${tools[@]}"; do
    if ! command -v $tool > /dev/null 2>&1; then
      echo -e "\033[38;5;133m[!] $tool is not installed, Preparing to install...\e[0m"
      start_time=$(date +%s)
      case $tool in
        x8) git clone https://github.com/Sh1Yo/x8 && echo -e "\nDo this: cd x8 && cargo build --release && mv x8 /usr/bin && cd .. && rm -rf x8\n" ;;
        urldedupe) git clone https://github.com/ameenmaali/urldedupe.git && cd urldedupe && cmake CMakeLists.txt && make && mv urldedupe /usr/bin && cd .. && rm -rf urldedupe ;;
        qsreplace) wget https://github.com/tomnomnom/qsreplace/releases/download/v0.0.3/qsreplace-linux-amd64-0.0.3.tgz && tar xvf qsreplace-linux-amd64-0.0.3.tgz && mv qsreplace /usr/bin/ &&  rm -rf qsreplace-linux-amd64-0.0.3.tgz ;;
        gau) wget https://github.com/lc/gau/releases/download/v2.2.3/gau_2.2.3_linux_amd64.tar.gz && tar xvf gau_2.2.3_linux_amd64.tar.gz && mv gau /usr/bin && rm -rf gau_2.2.3_linux_amd64.tar.gz LICENSE README.md ;;
        gf) go install -v github.com/tomnomnom/gf@latest ;;
        waybackurls) wget https://github.com/tomnomnom/waybackurls/releases/download/v0.1.0/waybackurls-linux-amd64-0.1.0.tgz && tar xvf waybackurls-linux-amd64-0.1.0.tgz && mv waybackurls /usr/bin && rm -rf waybackurls-linux-amd64-0.1.0.tgz ;;
        uro) pip3 install uro ;;
        ffuf) go install -v github.com/ffuf/ffuf@latest ;;
        anew) wget https://github.com/tomnomnom/anew/releases/download/v0.1.1/anew-linux-amd64-0.1.1.tgz && tar xvf anew-linux-amd64-0.1.1.tgz && mv anew /usr/bin/ && rm -rf anew-linux-amd64-0.1.1.tgz ;;
        subfinder) go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest ;;
        httpx) go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest ;;
        nmap) sudo apt-get install -y nmap ;;
        dirsearch) sudo apt-get install -y dirsearch ;;
        amass) sudo apt-get install -y amass ;;
        sublist3r) sudo apt-get install -y sublist3r ;;
        assetfinder) sudo  apt-get install -y assetfinder ;;
        nuclei) sudo apt-get install -y nuclei ;;
        massdns) sudo apt-get install -y massdns ;;
        shuffledns) wget https://github.com/projectdiscovery/shuffledns/releases/download/v1.1.0/shuffledns_1.1.0_linux_amd64.zip && unzip shuffledns_1.1.0_linux_amd64.zip && mv shuffledns /usr/bin && rm -rf README.md LICENSE.md shuffledns_1.1.0_linux_amd64.zip  ;;
        paramspider) git clone https://github.com/devanshbatham/paramspider && cd paramspider && pip install . && python3 setup.py install && cd .. && rm -rf paramspider ;;
        arjun) sudo apt-get install -y arjun ;;
        katana) wget https://github.com/projectdiscovery/katana/releases/download/v1.1.0/katana_1.1.0_linux_amd64.zip && unzip katana_1.1.0_linux_amd64.zip && mv katana /usr/bin && rm -rf LICENSE.md README.md katana_1.1.0_linux_amd64.zip ;;
        sqlmap) sudo apt-get install -y sqlmap ;;
        ghauri) git clone https://github.com/r0oth3x49/ghauri.git && cd ghauri && pip3 install -r requirements.txt && python3 setup.py install && cd .. && rm -rf ghauri ;;
        
      esac
      install_status=$?
      end_time=$(date +%s)
      time_diff=$((end_time - start_time))
            if [ $install_status -eq 0 ]
            then
                echo -e "\e[32m[*] $tool installed in $time_diff seconds\e[0m"
            else
                echo -e "\e[31m[!] Unable to install $tool, please try manually\e[0m"
            fi
        else
            echo -e "\e[33m[^] $tool is already installed in your system!\e[0m"
        fi
    done
}

# Install manally - references
please_manually_install() {
    echo -e "\n"
    echo -e "┌─────────────────────────────────────────────────┐"
    echo -e "│ Please manually install the following wordlists │"
    echo -e "└─────────────────────────────────────────────────┘"
    echo -e "┌──────────────────────────────────────────────────────────────────────────────────────────────────────────┐"
    echo -e "│ [₹] SecLists            (https://github.com/danielmiessler/SecLists)                                     │"
    echo -e "│ [₹] OneListForAll       (https://github.com/six2dez/OneListForAll)                                       │"
    echo -e "│ [₹] bbFuzzing           (https://github.com/reewardius/bbFuzzing.txt.git)                                │"
    echo -e "│ [₹] Dirsearch-Wordlist  (https://github.com/maurosoria/dirsearch/blob/master/db/dicc.txt)                │"
    echo -e "│ [₹] PayloadsAllTheThi.. (https://github.com/swisskyrepo/PayloadsAllTheThings.git)                        │"
    echo -e "│ [₹] webappurls          (https://github.com/pwnwiki/webappurls.git)                                      │"
    echo -e "│ [₹] RobotsDisallowed    (https://github.com/danielmiessler/RobotsDisallowed.git)                         │"
    echo -e "│ [₹] samlists            (https://github.com/the-xentropy/samlists)                                       │"
    echo -e "│ [₹] Arjun-Wordlist      (https://github.com/s0md3v/Arjun/tree/master/arjun/db)                           │"
    echo -e "│ [₹] Gf-Patterns         (https://github.com/1ndianl33t/Gf-Patterns)                                      │"
    echo -e "│  ↪  You can find more Gf-Patterns from here (https://github.com/emadshanab/Gf-Patterns-Collection.git)   │"
    echo -e "│ [₹] Nuclei-Templates    (https://github.com/projectdiscovery/nuclei-templates.git)                       │"
    echo -e "│ [₹] Commonspeak2        (https://wordlists-cdn.assetnote.io/data/manual/best-dns-wordlist.txt)           │"
    echo -e "└──────────────────────────────────────────────────────────────────────────────────────────────────────────┘"
}

# Call Functions
install_packages
install_tools
please_manually_install

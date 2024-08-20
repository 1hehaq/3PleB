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
        qsreplace) go install -v github.com/tomnomnom/qsreplace@latest ;;
        gau) go install -v github.com/lc/gau/v2/cmd/gau@latest ;;
        gf) go install -v github.com/tomnomnom/gf@latest ;;
        waybackurls) go install -v github.com/tomnomnom/waybackurls@latest ;;
        uro) pip3 install uro ;;
        ffuf) go install -v github.com/ffuf/ffuf@latest ;;
        anew) go install -v github.com/tomnomnom/anew@latest ;;
        subfinder) go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest ;;
        httpx) go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest ;;
        nmap) sudo apt-get install -y nmap ;;
        dirsearch) sudo apt-get install -y dirsearch ;;
        amass) sudo apt-get install -y amass ;;
        sublist3r) sudo apt-get install -y sublist3r ;;
        assetfinder) sudo  apt-get install -y assetfinder ;;
        nuclei) sudo apt-get install -y nuclei ;;
        massdns) sudo apt-get install -y massdns ;;
        shuffledns) go install -v github.com/projectdiscovery/shuffledns/cmd/shuffledns@latest ;;
        paramspider) git clone https://github.com/0xKayala/ParamSpider && echo -e "\nDo this: cd ParamSpider && pip3 install -r requirements.txt && cd ..\n" ;;
        arjun) sudo apt-get install -y arjun ;;
        katana) go install github.com/projectdiscovery/katana/cmd/katana@latest ;;
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

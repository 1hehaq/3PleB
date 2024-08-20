# 3Ple B (Bug Bounty Bundle)

![3Ple B](https://img.shields.io/badge/Bug%20Bounty-Bundle-green) ![License](https://img.shields.io/github/license/1hehaq/3PleB)

3Ple B (Triple B) is a bash script designed to automate the installation of the most popular tools used in bug bounty hunting and penetration testing. This bundle ensures that you have everything you need in one place, without the hassle of installing each tool manually.

----

## Overview

The `3Ple B` script handles:

→  Installation of essential programming languages and package managers like Go, CMake, Pip, and Cargo.

→  Automated installation of various bug bounty tools, including subdomain enumeration, fuzzing, web reconnaissance, and more.

→  A detailed list of recommended wordlists to be manually installed for enhanced performance.

### Portability and Minimal Setup

3Ple B stands out for its portability and efficiency. It streamlines the setup process by installing only the essential tools for bug bounty and penetration testing, avoiding unnecessary software. Whether you're configuring a new OS, VMs, or cloud instances, this single script ensures a clean, consistent setup with minimal effort. It keeps your system lightweight and high-performing by focusing only on what's needed.

### Workflow Example
----
>📌 Start Fresh: Boot into a clean OS with no pre-installed bloatware.

>📌 Run 3Ple B: Execute the script to automatically install your entire bug bounty toolkit.

>📌 Get to Work: Once completed, you are ready to start bug hunting and pentesting without any unnecessary clutter on your system.

----

### Tools Included


| Category                | Tools                                                                                     |
|-------------------------|-------------------------------------------------------------------------------------------|
| **Packages**| `Go`, `CMake`, `Pip`, `Cargo`                                                                     |
| **Subdomain Enumeration**| `subfinder`, `amass`, `assetfinder`, `massdns`, `shuffledns`, `sublist3r`                 |
| **Web Recon**            | `httpx`, `gau`, `waybackurls`, `katana`, `ffuf`, `dirsearch`, `x8`, `qsreplace`           |
| **Fuzzing**              | `ffuf`, `dirsearch`, `ParamSpider`, `arjun`, `bbFuzzing`                                  |
| **Vulnerability Scanning**| `nuclei`, `nmap`, `sqlmap`, `ghauri`                                                      |
| **Filtering/Parsing**    | `gf`, `anew`, `urldedupe`, `uro`                                                          |


### Prerequisites

Before using `3Ple B`, make sure your system meets the following prerequisites:

> - **Operating System**: Ubuntu/Debian-based distributions (support for other Linux distributions may vary).
> - **Root Privileges**: The script uses `sudo` for package installations. Ensure you have the necessary permissions.
> - **Internet Connection**: A stable internet connection is required to download the tools and dependencies.

## How to Install and Use

### 1. Clone the Repository

```bash
sudo su
```
```bash
git clone https://github.com/1hehaq/3PleB.git && cd 3PleB
```
### 2. Make the Script Executable
```bash
chmod +x 3pleb.sh
```
### 3. Run the Script
```bash
./3pleb.sh
```

The script will automatically check if a package or tool is installed and install it if necessary.

### Example Output
```
[!] go is not installed. Preparing to install...
[*] go installed in 35 seconds
[^] cmake is already installed in your system!
```
### 4. Manually Install Wordlists
After running the script, you'll need to manually install the recommended wordlists:

* SecLists: [SecLists GitHub](https://github.com/danielmiessler/SecLists)
* OneListForAll: [OneListForAll GitHub](https://github.com/six2dez/OneListForAll)
* bbFuzzing: [bbFuzzing GitHub](https://github.com/reewardius/bbFuzzing.txt.git)
* PayloadsAllTheThings: [PayloadsAllTheThings GitHub](https://github.com/swisskyrepo/PayloadsAllTheThings.git)
* Dirsearch Wordlist: [Dirsearch Wordlist](https://github.com/maurosoria/dirsearch/blob/master/db/dicc.txt)
* Gf-Patterns: [Gf-Patterns GitHub](https://github.com/1ndianl33t/Gf-Patterns)
* More Gf-Patterns: [Gf-Patterns Collection GitHub](https://github.com/emadshanab/Gf-Patterns-Collection.git)
* Nuclei-Templates: [Nuclei-Templates GitHub](https://github.com/projectdiscovery/nuclei-templates.git)
* Commonspeak2: [Commonspeak2 Wordlist](https://wordlists-cdn.assetnote.io/data/manual/best-dns-wordlist.txt)


The script will provide the full list of wordlists and corresponding links when it's run.

## Customization
You can easily modify or extend the script by:

Adding new tools to the tools array in the `install_tools()` function.
Including additional commands for package installations in the `install_packages()` function.
Make sure to follow the existing syntax for consistency.

### Troubleshooting
* Installation Errors: If the script is unable to install a tool, a message will prompt you to install it manually.
* Missing Dependencies: Ensure all package managers like apt, pip, and go are installed and functioning properly on your system.

## Contributing
If you have suggestions to improve the script or to add more useful tools, please open a pull request or submit an issue on GitHub. I wish to see a contribution from you!

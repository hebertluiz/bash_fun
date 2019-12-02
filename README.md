# bash_fun // functions and helpers
Collections of scripts, tools, and functions to help a sysadmin job.

## Installation

Clone in your home and make simbolic links or aliases to scripts

```bash
# Clone 
git clone https://github.com/hebertluiz/bash_functions_and_helpers.git

# Alias (name as you like it)
ln -s ~/bash_functions_and_helpers/functions/valid_ip /usr/local/bin/check_valid_ip
```

## Usage

Importing file in a script.
```bash
#!/bin/bash 
source ~/bash_functions_and_helpers/functions/valid_ip
```
Running from CLI
```bash
~/bash_functions_and_helpers/make_ssh_tunnel 
```

## Contributing
Feel free to make pull requests. For major changes ou new files, please open an issue first to discuss what you would like to add or change.

[![License: GPL v2](https://img.shields.io/badge/License-GPL%20v2-blue.svg)](https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html)

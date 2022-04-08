let-env PROMPT_COMMAND = { oh-my-posh prompt print primary --config /opt/homebrew/share/oh-my-posh/themes/kali.omp.json }
let-env PROMPT_COMMAND_RIGHT = { oh-my-posh print right }

alias brew = /opt/homebrew/bin/brew
alias ww = /Users/jairocaro-accinoviciana/WhatWeb/whatweb
alias scan = docker run -it --rm --name rustscan rustscan/rustscan:1.10.0 -b 2500
alias slowscan = docker run -it --rm --name rustscan rustscan/rustscan:1.10.0 -b 10
alias ikat = ^open http://www.ikat.kronicd.net
alias clone = goclone
alias dnsm = dnsmorph -d
alias bitflip = bf-lookup
alias exploit = searchsploit -w
alias news = newsboat -u ~/news.links
alias tricks = ^open https://book.hacktricks.xyz
alias shells = ^open https://book.hacktricks.xyz/shells/shells/linux
alias re_quarantine = xattr -d com.apple.quarantine
alias fuzz = scout url -k -r 50
alias vhost = scout vhost -k
alias mitm = hetty --chrome

export def proto_replace [data, target, replace] {
    echo $data | base64 -d | sed $"s/($target)/($replace)/g" | base64
}

module force {
  export def ftp [ip] {
    medusa -h $ip -U ./dic/usernames.txt -P ./dic/passwords.txt -M ftp
  }
}

# Tools
alias url_traitor = https://github.com/liamg/traitor            # Linux privesc
alias url_gitjacker = https://github.com/liamg/gitjacker        # Leak git repositories
alias url_furious = https://github.com/liamg/furious            # network scanner
alias url_scout = https://github.com/liamg/scout                # URL fuzzer
alias url_memit = https://github.com/liamg/memit                # Execute a binary from memory
alias url_extrude = https://github.com/liamg/extrude            # Analyse binaries
alias url_rathole = https://github.com/rapiz1/rathole           # reverse proxy
alias url_bitflip = https://github.com/bored-engineer/bf-lookup # Domain bitflip generator
alias url_merlin = https://github.com/Ne0nd0g/merlin            # post-exploitation Command & Control
alias url_scanner = https://github.com/projectdiscovery/nuclei  # vulnerability scanner
alias url_checkip = https://github.com/jreisinger/checkip       # ip info
alias url_medusa = https://github.com/jmk-foofus/medusa         # cracker
alias url_hetty = https://github.com/dstotijn/hetty             # HTTP toolkit

# Medusa
let-env FREERDP2_CFLAGS = '-I/usr/local/include'
let-env FREERDP2_LIBS = '-I/usr/local/lib/freerdp'

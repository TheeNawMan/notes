#!/usr/bin/env bash
# Change your profile and file
profile="Win10x64_18362"
file="memdump.mem"
cmds=(
    "pslist"
    "psscan"
    "pstree"
    "pstotal"
    "psxview"
    "dlllist"
    "getsids"
    "handles"
    "filescan"
    "mutantscan"
    "cmdscan"
    "consoles"
    "scvscan"
    "cmdline"
    "connections"
    "connscan"
    "sockets"
    "sockscan"
    "netscan"
)
echo "[+] File: $file"
echo "[+] Profile: $profile"
for i in "${cmds[@]}"; do
    echo "[+] Command: $i"
        vol.py --profile=$profile --output-file=$i -f $file $i
done

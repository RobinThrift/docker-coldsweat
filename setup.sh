#!/bin/bash
if [[ ! -f /coldsweat/data/coldsweat.db ]]; then
python sweat.py setup <<EOF
$EMAIL
$PASSWORD
$PASSWORD
EOF
fi;

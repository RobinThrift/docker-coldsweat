#!/bin/bash
if [[ ! -f /data/coldsweat.db ]]; then
python sweat.py setup -u "$USERNAME" <<EOF
$EMAIL
$PASSWORD
$PASSWORD
EOF
echo "SETUP DB"
fi;

python sweat.py serve -r

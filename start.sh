#!/bin/bash
python3 -m simplebot init "$ADDR" "$PASSWORD"
python3 -m simplebot --account "$ADDR" plugin --add ./youtube.py
python3 -m simplebot --account "$ADDR" admin --add "$ADMIN"
python3 -m simplebot --account "$ADDR" db -s simplebot_downloader/delay 35
python3 -m simplebot --account "$ADDR" db -s simplebot_downloader/max_size 304857600
python3 -m simplebot --account "$ADDR" db -s simplebot_downloader/part_size 10485760
python3 -m simplebot --account "$ADDR" serve

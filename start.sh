#!/bin/bash
python3 -m simplebot init "$ADDR" "$PASSWORD"
python3 -m simplebot --account "$ADDR" plugin --add ./youtube.py
python3 -m simplebot --account "$ADDR" admin --add "$ADMIN"
python3 -m simplebot --account "$ADDR" db -s simplebot_downloader/delay 30
python3 -m simplebot --account "$ADDR" db -s simplebot_downloader/max_size 3048576000
python3 -m simplebot --account "$ADDR" db -s simplebot_downloader/part_size 104857600
python3 -m simplebot --account "$ADDR" serve

#!/bin/bash
python3 -m simplebot init "$ADDR" "$PASSWORD"
python3 -m simplebot --account "$ADDR" plugin --add ./youtube.py
python3 -m simplebot --account "$ADDR" admin --add "$ADMIN"
python3 -m simplebot --account "$ADDR" db -s simplebot_downloader/delay 30
python3 -m simplebot --account "$ADDR" serve

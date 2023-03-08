#!/bin/bash

cd "$(dirname "$0")"

d=$(date +%s)

curl -iX POST https://localhost:1026/v2/entities \
--cert ../cert/localhost.pem  --key ../cert/localhost.key \
-H "Content-Type: application/json" \
--data-binary @- << EOF
{
  "type": "Room",
  "id": "Bcn-Welt${d}",
  "temperature": {
    "value": 21.7
  },
  "humidity": {
    "value": 60
  },
  "location": {
    "value": "41.3763726, 2.1864475",
    "type": "geo:point",
    "metadata": {
      "crs": {
        "value": "WGS84"
      }
    }
  }
}
EOF

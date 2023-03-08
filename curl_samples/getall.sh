cd "$(dirname "$0")"

#curl -iX GET --insecure https://localhost:1026/v2/entities
curl -iX GET --cert ../cert/localhost.pem --key ../cert/localhost.key https://localhost:1026/v2/entities

app-start () {
docker pull vincentko89/stockanalysis
docker run -i -t -p 8080:8080 vincentko89/stockanalysis:latest
}

openssl-encrypt () {
input=$1
output=$2
openssl aes-256-cbc -a -salt -in $input -out $output
}

openssl-decrypt () {
input=$1
output=$2
openssl aes-256-cbc -d -a -in $input -out $output
}


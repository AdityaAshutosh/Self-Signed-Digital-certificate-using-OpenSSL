rm *.pem
#Create a private key for CA and a self signed certificate
touch ca-cert.pem

>openssl req -x509 -newkey rsa:4096 -days 365 -keyout ca-key.pem -out ca-cert.pem -subj "/C = IN /ST = BIHAR / L = PATNA /O = Zeeve / OU = Blockchain Sevices / CN = Aditya / emailAddress = adityaashutosh82@gmail.com"

echo "CA's self Signed Certificate"
openssl x509 -in ca-cert.pem -noout -text
#create a privete key for web server and generate a CSR

#sign the CSR using CA private keys and return a certificate
# List all certificates in a keystore
keytool -list -keystore mykeystore.jks

# View a specific certificate
keytool -list -keystore mykeystore.jks -alias server-cert

# Export a certificate to a file
keytool -exportcert -keystore mykeystore.jks -alias server-cert -file server-cert.crt

# Decode the exported certificate using OpenSSL
openssl x509 -in server-cert.crt -text -noout

# Add the Keytool binary to PATH (example)
export PATH=$PATH:/path/to/jdk/bin

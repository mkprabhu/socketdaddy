
# Keytool Commands for Printing and Viewing Certificates

This repository contains example commands for using Keytool to print and view certificates in a keystore. These commands help manage and verify certificates in Java-based applications.

## Commands Included

1. **List All Certificates in a Keystore**
   ```bash
   keytool -list -keystore mykeystore.jks
   ```

2. **View a Specific Certificate**
   ```bash
   keytool -list -keystore mykeystore.jks -alias server-cert
   ```

3. **Export a Certificate**
   ```bash
   keytool -exportcert -keystore mykeystore.jks -alias server-cert -file server-cert.crt
   ```

4. **Decode the Exported Certificate**
   ```bash
   openssl x509 -in server-cert.crt -text -noout
   ```

5. **Add Keytool to PATH**
   ```bash
   export PATH=$PATH:/path/to/jdk/bin
   ```

## Reference

For detailed explanations of these commands, refer to the original post on SocketDaddy:  
[Keytool Print and View Certificate: Commands and Examples](https://socketdaddy.com/ssl-tls/keytool-print-and-view-certificate-commands-and-examples/?source=github&medium=example_code&campaign=readme)

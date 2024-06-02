# DomainKeys Identified Mail
The __DomainKeys Identified Mail (DKIM)__ is a cryptographic email authentication method that helps verify the authenticity of an email message. It allows the sender of an email to digitally sign the message using a private key, and the recipient can then verify the signature using a public key published in the sender's DNS records. This process ensures that the email hasn't been tampered with during transit and that it indeed came from the claimed sender domain.

Here's how DKIM works with an example:

1. **Key Generation:**
      - The sending domain generates a pair of cryptographic keys: a private key and a corresponding public key.
      - The private key remains confidential and is used to sign outgoing emails, while the public key is made available through DNS records.

2. **Signing Process:**
      - When the sending mail server wants to send an email, it generates a unique cryptographic hash of the email's contents (excluding certain headers).
      - This hash is then encrypted using the private key, creating a digital signature. The signature is attached to the email as a DKIM-Signature header.

3. **DNS Record Update:**
      - The sender publishes the public key in their DNS records as a TXT record, associating it with the domain used to send emails.
      - The public key is retrieved by the recipient's mail server when verifying the email's authenticity.

4. **Verification Process:**
      - When the recipient's mail server receives an email, it extracts the DKIM-Signature header and retrieves the public key from the sender's DNS records.
      - The server then decrypts the signature using the public key, revealing the hash.
      - The server also generates its own hash of the received email's contents (excluding certain headers).

5. **Comparison and Authentication:**
      - The recipient's server compares the two hashes – the one it generated and the one decrypted from the signature.
      - If the hashes match, the email is considered authentic and hasn't been tampered with during transit. If they don't match, it suggests potential tampering, and the email might be treated as suspicious or even rejected.

DKIM helps prevent email spoofing and ensures the integrity of emails, making it harder for malicious actors to forge the sender's identity or modify email content without detection.

## DNS record

Example of a DKIM record for "example.com":

```
default._domainkey.example.com. IN TXT "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC3Yh7GzR4sb9C9aVdktRaR0wI1
i4F5A1hx+I3h9SQcqP3s7wH6CfhZa/vU0xC/XL15Boek3ssW/JjBGOUeOfM3Q9uR
q4aPLX7wdJlvA5Qx3Kf/EqZIyqCBjYirpvzGrf4bL+p3YbYYMPi0xMCwXvANRi6D
ESCMzujE0bIG1d0W6wIDAQAB"
```

- `default._domainkey.example.com.`: This is the selector for the DKIM key. The `default` selector is commonly used, and `_domainkey.example.com` is a subdomain used to host DKIM keys.

- `IN TXT`: This specifies the record type as a TXT record.

- `"v=DKIM1; k=rsa; p=MIGfMA0GCSq..."`: This is the DKIM record itself. It includes several key-value pairs:
  - `v=DKIM1`: Indicates the version of DKIM being used.
  - `k=rsa`: Specifies the encryption algorithm (RSA in this case).
  - `p=`: Contains the actual public key associated with DKIM. The long string is the actual public key value.

When a recipient's mail server receives an email from "example.com", it will use the DKIM selector (`default._domainkey.example.com`) to look up the corresponding public key in the DNS TXT record. It will then use this public key to verify the authenticity of the DKIM signature in the email's header.

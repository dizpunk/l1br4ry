# Mail Transfer Agent and Strict Transport Security
__MTA-STS__ stands for __Mail Transfer Agent Strict Transport Security__. It is a security protocol designed to enhance the security of email communication by enforcing encryption and ensuring secure communication between email servers. MTA-STS helps prevent certain types of attacks, such as man-in-the-middle attacks, which can compromise the confidentiality and integrity of email messages.

Here's how MTA-STS works:

1. **Enabling MTA-STS:** A domain owner sets up MTA-STS for their domain by creating a policy file and hosting it on a specified HTTPS server. This policy file contains information about the domain's MTA-STS policy, including the MX (Mail Exchange) hosts that support TLS (Transport Layer Security) encryption.

2. **DNS Records:** The domain owner also adds DNS records for their domain to indicate the existence of an MTA-STS policy and the location of the policy file. These DNS records are of type `TXT` and `_mta-sts`.

3. **Policy Discovery:** When an email server wants to send an email to a recipient at a domain with an MTA-STS policy, it first performs a DNS lookup for the `_mta-sts` record of the recipient's domain. This record contains the URL of the policy file.

4. **Policy Fetching:** The email server then retrieves the MTA-STS policy file using the provided URL over HTTPS. The policy file specifies which MX hosts are expected to support encrypted connections (TLS) for sending emails.

5. **Policy Enforcement:** The sending email server establishes an encrypted connection (TLS) with the recipient's email server, using the MX hosts specified in the policy file. If the recipient's server does not support encrypted connections, the sending server should reject the email transmission or take appropriate action as per the policy.

6. **Caching and Timing:** MTA-STS policies have a "max-age" directive that specifies how long the policy can be cached. This allows email servers to cache the policy and avoid repeated DNS and HTTPS requests for a certain period. The domain owner can also include a "preload" directive to signal to major email providers that their policy should be preloaded into email servers, providing more immediate protection.

In summary, MTA-STS is a mechanism that helps ensure that email communication between servers is encrypted using TLS, thereby enhancing the security and privacy of email messages. It is part of ongoing efforts to improve the security of email communication and mitigate potential vulnerabilities and attacks.

## Policy and DNS record

Example of an MTA-STS policy file and the corresponding DNS records for the domain "example.com":

1. **MTA-STS Policy File (example.com.mta-sts.txt):**
```
version: STSv1
mode: enforce
max_age: 86400   # 1 day in seconds

mx: mx1.example.com
mx: mx2.example.com
```

In this example policy file:
- `version`: Specifies the version of the MTA-STS policy.
- `mode`: Sets the policy mode. "enforce" means that the policy should be enforced, requiring encrypted connections.
- `max_age`: Specifies how long the policy can be cached. Here, it's set to 1 day (86400 seconds).
- `mx`: Lists the MX hosts that should support TLS for sending emails.


2. **DNS Records:**
Add the following DNS records for the "example.com" domain:

    - `_mta-sts.example.com` TXT record:
  ```
  v=STSv1; id=20230101T123456Z;
  ```
  This record indicates the existence of an MTA-STS policy and includes the current date and time in UTC.

    - `_smtp._tls.example.com` MX record:
  ```
  10 mx1.example.com
  20 mx2.example.com
  ```
  This record points to the MX hosts that are specified in the MTA-STS policy file. The "10" and "20" are the priority values, and "mx1.example.com" and "mx2.example.com" are the domain's mail exchange servers.

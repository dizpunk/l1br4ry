# Domain-based Message Authentication, Reporting, and Conformance
__DMARC__ stands for __Domain-based Message Authentication, Reporting, and Conformance__. It is an email authentication protocol designed to combat email phishing and spoofing by providing a way for domain owners to specify how email messages from their domain should be handled if they fail authentication checks. DMARC works by allowing domain owners to publish policies in their Domain Name System (DNS) records that instruct receiving mail servers on how to handle emails that claim to be from their domain.

Here's how DMARC works:

1. **Authentication Mechanisms:** DMARC builds upon two existing email authentication mechanisms: SPF (Sender Policy Framework) and DKIM (DomainKeys Identified Mail).

      - **SPF (Sender Policy Framework):** SPF allows domain owners to specify which IP addresses and servers are authorized to send emails on behalf of their domain. When a receiving mail server gets an email claiming to be from a certain domain, it can check if the sending server's IP address is listed in that domain's SPF record.

      - **DKIM (DomainKeys Identified Mail):** DKIM allows domain owners to sign outgoing emails with a digital signature. The receiving mail server can then verify this signature by checking the corresponding public key in the domain's DNS records.

2. **DMARC Policy:** A domain owner publishes a DMARC policy in their DNS records, specifying how the receiving mail server should handle emails that fail SPF and DKIM checks. The policy can have three main actions: "none," "quarantine," and "reject."

      - **None:** The DMARC policy is set to "none" when the domain owner is in monitoring mode. It allows the domain owner to collect reports on failed authentication attempts without taking any action on the emails.

      - **Quarantine:** The DMARC policy is set to "quarantine" when the domain owner wants the receiving mail server to treat emails that fail authentication as suspicious. These emails might be placed in the recipient's spam folder.

      - **Reject:** The DMARC policy is set to "reject" when the domain owner wants the receiving mail server to outright reject emails that fail authentication. These emails are not delivered to the recipient's inbox.

3. **Reporting:** DMARC also provides reporting mechanisms. Receiving mail servers can send aggregate and forensic reports back to the domain owner, detailing the authentication status of incoming emails claiming to be from their domain. These reports provide valuable insights into unauthorized use of the domain for phishing or spoofing attempts.

DMARC helps domain owners protect their brand and recipients from phishing and spoofing attacks by specifying how receiving mail servers should handle emails that claim to originate from their domain. It builds upon SPF and DKIM authentication mechanisms and provides policies for action to be taken based on the authentication results. The reporting aspect of DMARC allows domain owners to monitor and improve their email authentication practices over time.

## DNS record

Example of a DMARC record for the domain "example.com":

```
_dmarc.example.com. IN TXT "v=DMARC1; p=quarantine; rua=mailto:dmarc@example.com; ruf=mailto:dmarc@example.com; fo=1"
```

- `v=DMARC1`: This specifies the version of the DMARC protocol being used.

- `p=quarantine`: This sets the policy action to "quarantine." It instructs receiving mail servers to treat emails that fail authentication as suspicious and potentially place them in the recipient's spam folder.

- `rua=mailto:dmarc@example.com`: This indicates where aggregate reports should be sent. In this example, aggregate reports will be sent to the email address "dmarc@example.com."

- `ruf=mailto:dmarc@example.com`: This indicates where forensic (detailed) reports should be sent. Similar to aggregate reports, forensic reports will be sent to the email address "dmarc@example.com."

- `fo=1`: This specifies the format of the reports. The value "1" indicates that the reports should be generated in a human-readable format.

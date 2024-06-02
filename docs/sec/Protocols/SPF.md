# Sender Policy Framework
The __Sender Policy Framework (SPF)__ is an email authentication method designed to prevent email spoofing and unauthorized use of a domain's name in email headers. SPF works by allowing domain owners to specify which IP addresses or ranges are authorized to send emails on behalf of their domain. An SPF record is a DNS TXT record containing a list of the IP addresses that are allowed to send email on behalf of your domain.

These authorized sources are defined in the record using SPF mechanisms:

1. **IP Address Mechanism (`ip4` and `ip6`):** This mechanism specifies a specific IP address or range of IPv4 (`ip4`) or IPv6 (`ip6`) addresses that are authorized to send emails for the domain. For example:
      - `v=spf1 ip4:192.168.1.1/24 -all` allows the IP range 192.168.1.1 to 192.168.1.255 to send emails.
      - `v=spf1 ip6:2001:db8::/32 -all` allows the IPv6 range 2001:db8:: to 2001:db8:ffff:ffff:ffff:ffff:ffff:ffff to send emails.

2. **Domain Mechanism (`a` and `mx`):** These mechanisms refer to the IP addresses of the domain's A records (`a`) or MX records (`mx`). They allow the IP addresses associated with the domain's DNS records to send emails. For example:
      - `v=spf1 a -all` authorizes the IP address of the domain's A record.
      - `v=spf1 mx -all` authorizes the IP addresses of the domain's MX records.

3. **Include Mechanism (`include`):** This mechanism allows you to include SPF records from another domain within your own SPF record. It's useful when you're using a third-party service to send emails on behalf of your domain. For example:
      - `v=spf1 include:_spf.example.com -all` includes the SPF record of `_spf.example.com` in your SPF policy.

4. **All Mechanism (`all`):** This mechanism defines the default action for emails that don't match any of the specified mechanisms. There are three possible outcomes:
      - `-all`: Deny all emails that do not match any mechanism (recommended for strict policies).
      - `~all`: Soft fail, where the email is less likely to be accepted but not outright rejected.
      - `?all`: Neutral, indicating that the policy is neither positive nor negative.

5. **Redirect Mechanism (`redirect`):** This mechanism is used to specify a domain that will provide the actual SPF record for authorization. The receiving server will look up the provided domain for the SPF record and use it to evaluate the email. For example:
      - `v=spf1 redirect=spf.example.com` directs to the SPF record of `spf.example.com`.

6. **Explanation Mechanism (`exp`):** This mechanism is used to provide a human-readable explanation for the SPF policy. It's not widely supported and mainly serves as a comment. For example:
      - `v=spf1 exp=Explanation for this SPF policy -all`.

SPF mechanisms are combined to create a comprehensive SPF record that specifies which sources are authorized to send emails on behalf of a domain. It's important to carefully design your SPF policy to ensure legitimate emails are not rejected and unauthorized emails are properly blocked.

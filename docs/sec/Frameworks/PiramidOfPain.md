# The Piramid of Pain
The Pyramid of Pain is a conceptual model for the effective use of Cyber Threat Intelligence in threat detection operations, with a particular emphasis on increasing the adversaries' cost of operations.

<p align="center">
  <img alt="Piramid of Pain" src="https://www.netsurion.com/assets/content/uploads/pyramid-of-pain.jpg"/>
</p>


1. **Hash values** - SHA1, MD5, or other similar hashes that correspond to specific suspicious or malicious files.
Security professionals usually use the hash values to gain insight into a specific malware sample, a malicious or a suspicious file, and as a way to uniquely identify and reference the malicious artifact.
With so many variations and instances of known malware or ransomware, threat hunting using file hashes as the IOC (Indicators of Compromise) can become difficult.

2. **IP addresses** - An IP address is used to identify any device connected to a network.
From a defense standpoint, knowledge of the IP addresses an adversary uses can be valuable. A common defense tactic is to block, drop, or deny inbound requests from IP addresses on your parameter or external firewall. This tactic is often not bulletproof as it’s trivial for an experienced adversary to recover simply by using a new public IP address.

3. **Domain names** - A domain name itself, or sub domains.
Domain Names can be a little more of a pain for the attacker to change as they would most likely need to purchase the domain, register it and modify DNS records. Unfortunately for defenders, many DNS providers have loose standards and provide APIs to make it even easier for the attacker to change the domain.

4. **Host artifacts** - Host artifatcs are the traces or observables that attackers leave on the system, such as registry values, suspicious process execution, attack patterns or IOCs (Indicators of Compromise), files dropped by malicious applications, or anything exclusive to the current threat.
The attacker would need to circle back at this detection level and change his attack tools and methodologies. This is very time-consuming for the attacker, and probably, he will need to spend more resources on his adversary tools.

5. **Network Artifacts** - A network artifact can be a user-agent string, C2 information, or URI patterns followed by the HTTP POST requests. An attacker might use a User-Agent string that hasn’t been observed in your environment before or seems out of the ordinary. The User-Agent is defined by RFC2616 as the request-header field that contains the information about the user agent originating the request.

6. **Tools** - Software used by attackers to accomplish their mission. Attackers would use these utilities to create malicious macro documents (maldocs) for spearphishing attempts, a backdoor that can be used to establish C2 (Command and Control Infrastructure), any custom .EXE, and .DLL files, payloads, or password crackers.

7. **TTPs** - Tactics, Techniques and Procedures (TTPs), which means all the steps taken by an adversary to achieve his goal, starting from reconnaissance or phishing attempts to persistence and data exfiltration.
If you can detect and respond to TTPs quickly, you leave the adversaries almost no chance to fight back. At this point, the attacker would have no other choice but to go back, do more research and reconfigure their custom tools or to give up and find another target.

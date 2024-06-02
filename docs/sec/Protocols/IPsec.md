# Internet Protocol Security
__IPSec__, short for __Internet Protocol Security__, is a suite of protocols and cryptographic techniques used to secure and protect communication over IP networks. It provides a framework for ensuring the confidentiality, integrity, and authenticity of data transmitted between devices in a network, typically over the Internet.

IPSec operates at the network layer (Layer 3) of the OSI model and can be used to establish Virtual Private Networks (VPNs) or to secure individual network connections. It offers two main modes of operation: __Transport Mode__ and __Tunnel Mode__.

Here's how IPSec works:

1. **Authentication and Key Exchange**:
   Before secure communication can begin, the two devices (or endpoints) that want to communicate need to establish a secure channel and exchange cryptographic keys. This is usually done using protocols like the Internet Key Exchange (IKE) protocol. IKE negotiates the encryption algorithm, authentication method, and other security parameters to be used during the communication.

2. **Encapsulation and Encryption**:
   Once the keys and security parameters are established, the data to be transmitted is encapsulated within an IPSec packet. This encapsulation involves adding an IPSec header to the original IP packet. The IPSec header contains information needed for the secure transmission, such as the security parameters, sequence numbers, and other metadata.

3. **Encryption and Authentication**:
   The encapsulated data is encrypted to ensure its confidentiality. Encryption algorithms like AES (Advanced Encryption Standard) are commonly used for this purpose. Additionally, the data is authenticated using HMAC (Hash-based Message Authentication Code) algorithms to detect any tampering or unauthorized changes during transmission.

4. **Transmission and Decryption**:
   The IPSec-protected packet is then transmitted over the network. Routers and firewalls along the route can apply IPSec policies to enforce security requirements. When the packet reaches the receiving endpoint, it's decrypted using the appropriate cryptographic keys and algorithms. The authenticity of the packet is verified through the authentication information added in the IPSec header.

5. **Decapsulation**:
   Once the packet is decrypted and authenticated, the original IP packet is extracted from the IPSec packet. This process involves removing the IPSec header and any additional encapsulation layers.

By implementing these steps, IPSec ensures that data integrity is maintained, data confidentiality is preserved, and the authenticity of the communication partners is verified. It's worth noting that while IPSec provides a strong level of security, proper configuration and management are crucial to ensure its effectiveness.

## Transport and Tunnel modes
IPSec offers two main modes of operation: __Transport Mode__ and __Tunnel Mode__. These modes determine how IPSec is applied to the communication between two devices (or endpoints) and how the original IP packets are protected and secured.

1. **Transport Mode**:
   In Transport Mode, IPSec secures the payload of the original IP packet while leaving the original IP header intact. This mode is typically used when the communication is between two endpoints, and the devices want to secure the data being transmitted without changing the original source and destination IP addresses.

   Here's how Transport Mode works:

   - The original IP packet's payload is encrypted and authenticated.
   - An additional IPSec header is added to the encrypted payload, containing information related to IPSec security associations.
   - The encrypted packet is then sent over the network with the original IP header still visible.

   Transport Mode is commonly used for end-to-end communication, such as securing VoIP calls or secure communications within a private network.

2. **Tunnel Mode**:
   In Tunnel Mode, IPSec encapsulates the entire original IP packet within a new IPSec-protected packet. This new packet, often referred to as the "tunnel," has its own IP header, which means the original source and destination IP addresses are now the endpoints of the tunnel. This mode is used when communication needs to be secured between two networks or when there is a need to hide the original source and destination IP addresses.

   Here's how Tunnel Mode works:

   - The original IP packet (including its IP header and payload) is encrypted and authenticated.
   - An IPSec header is added to the encrypted packet, containing information about the IPSec security associations and the new tunnel IP header.
   - A new outer IP header is added to the packet, specifying the source and destination of the tunnel endpoints.

   Tunnel Mode is often used for creating Virtual Private Networks (VPNs), connecting remote offices or individual devices to a central network, and securing communication between different networks over the Internet.

In summary, Transport Mode encrypts and secures the data within the original IP packet, while Tunnel Mode encapsulates the entire original IP packet within a new IPSec-protected packet. The choice between these modes depends on the specific security requirements and the nature of the communication: whether it's end-to-end between devices or between networks.

## IPsec packets
Certainly! Let's consider an example scenario where two devices, Device A and Device B, are communicating using IPSec in both Transport Mode and Tunnel Mode.

**1. IPSec Transport Mode:**

In Transport Mode, only the payload of the original IP packet is encrypted and authenticated. The original IP header remains intact.

```
Original IP Header
+-------------------------------+
| Version |  IHL  |  DSCP | ECN |
+-------------------------------+
| Total Length | Identification |
+-------------------------------+
| Flags | Fragment Offset       |
+-------------------------------+
| TTL   | Protocol  |  Header   |
|       |           |  Checksum |
+-------------------------------+
| Source IP Address             |
+-------------------------------+
| Destination IP Address        |
+-------------------------------+
|   IPSec Header                |
| +---------------------------+ |
| | Next Header |  Payload    | |
| |             |  Length     | |
| +---------------------------+ |
| |  Security Parameters      | |
| | +-----------------------+ | |
| | |   ... (SPI, Seq #,    | | |
| | |   Encryption, Auth,   | | |
| | |   Key Exchange Params)| | |
| | +-----------------------+ | |
| +---------------------------+ |
+-------------------------------+
|   Encrypted Payload           |
| +---------------------------+ |
| |         Data              | |
| +---------------------------+ |
+-------------------------------+
```

- The "Original IP Header" includes various fields such as the version, header length, DSCP (Differentiated Services Code Point), ECN (Explicit Congestion Notification), identification, flags, fragment offset, TTL (Time to Live), protocol, header checksum, source IP address, and destination IP address. This is the standard IP header of the original packet.

- The "IPSec Header" follows the original IP header. It includes fields like "Next Header" (indicating the type of payload following the IPSec header) and "Payload Length" (length of the IPSec payload, excluding the header).

- Within the "IPSec Header," there are "Security Parameters" which encompass information such as Security Parameter Index (SPI), sequence number, encryption algorithm, authentication algorithm, and other key exchange parameters. These parameters are necessary for securing and authenticating the communication.

- The "Encrypted Payload" contains the actual data of the original packet. This data has been encrypted to ensure confidentiality and integrity during transmission.


**2. IPSec Tunnel Mode:**

In Tunnel Mode, the entire original IP packet, including its header and payload, is encapsulated within a new IPSec-protected packet with its own IP header.

```
Original IP Header
+-------------------------------+
| Version |  IHL  |  DSCP | ECN |
+-------------------------------+
| Total Length | Identification |
+-------------------------------+
| Flags | Fragment Offset       |
+-------------------------------+
| TTL   | Protocol  |  Header   |
|       |           |  Checksum |
+-------------------------------+
| Source IP Address             |
+-------------------------------+
| Destination IP Address        |
+-------------------------------+
|   New IP Header (Tunnel)      |
| +---------------------------+ |
| | Version | IHL | DSCP | ECN  |
| +---------------------------+ |
| | Total Length|Identification |
| +---------------------------+ |
| | Flags | Fragment Offset   | |
| +---------------------------+ |
| | TTL  | Protocol  | Header   |
| |      |           | Checksum |
| +---------------------------+ |
| | Source IP (Tunnel Source) | |
| +---------------------------+ |
| | Destination IP (Tunnel    | |
| | Destination)              | |
| +---------------------------+ |
|   IPSec Header                |
| +---------------------------+ |
| | Next Header |  Payload    | |
| |             |  Length     | |
| +---------------------------+ |
| |  Security Parameters      | |
| | +-----------------------+ | |
| | |   ... (SPI, Seq #,    | | |
| | |   Encryption, Auth,   | | |
| | |   Key Exchange Params)| | |
| | +-----------------------+ | |
| +---------------------------+ |
+-------------------------------+
|   Encrypted Payload           |
| +---------------------------+ |
| |         Data              | |
| +---------------------------+ |
+-------------------------------+
```

- The "Original IP Header" remains the same as in the Transport Mode representation, including all the standard fields of an IP header.

- Following the "Original IP Header," there's a "New IP Header (Tunnel)" that encapsulates the entire original packet. This new IP header serves as the outer header for the tunnel. It includes fields like version, IHL, DSCP, ECN, total length, identification, flags, fragment offset, TTL, protocol, header checksum, source IP (the tunnel source), and destination IP (the tunnel destination).

- After the "New IP Header (Tunnel)," there's the "IPSec Header," which contains similar fields already mentioned before: "Next Header," "Payload Length," and "Security Parameters."

- The "Encrypted Payload" contains the actual data of the original packet, encrypted for confidentiality.

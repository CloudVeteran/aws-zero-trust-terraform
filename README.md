# Zero Trust Architecture on AWS

**Terraform • AWS Verified Access • Network Firewall • NIST 800-53**

This project implements a modern Zero Trust architecture on AWS using Infrastructure as Code.

## Key Features
- AWS Verified Access (no VPN required)
- AWS Network Firewall with micro-segmentation
- PrivateLink endpoints
- IAM Identity Center integration
- Designed for CISA Zero Trust and NIST 800-53 compliance

```mermaid
flowchart TD
    subgraph VPC["VPC (10.0.0.0/16)"]
        direction TB
        
        subgraph PrivateSubnets["Private Subnets (3 AZs)"]
            Subnet1["Private Subnet 1"]
            Subnet2["Private Subnet 2"]
            Subnet3["Private Subnet 3"]
        end

        Firewall["AWS Network Firewall<br/>(Micro-segmentation)"]
        
        subgraph SecurityLayer["Zero Trust Security Layer"]
            VerifiedAccess["AWS Verified Access Instance"]
            TrustProvider["Device Trust Provider<br/>(Jamf)"]
        end
    end

    VerifiedAccess -->|Application Access| Subnet1
    VerifiedAccess -->|Application Access| Subnet2
    VerifiedAccess -->|Application Access| Subnet3

    Firewall -->|Traffic Inspection| Subnet1
    Firewall -->|Traffic Inspection| Subnet2
    Firewall -->|Traffic Inspection| Subnet3

    VerifiedAccess -.-> TrustProvider

    style VPC fill:#FF9900,stroke:#232F3E,color:#fff
    style PrivateSubnets fill:#1B660F,stroke:#fff,color:#fff
    style SecurityLayer fill:#232F3E,stroke:#FF9900,color:#fff
    style VerifiedAccess fill:#FF9900,stroke:#232F3E
    style TrustProvider fill:#FF9900,stroke:#232F3E
    style Firewall fill:#232F3E,stroke:#FF9900,color:#fff

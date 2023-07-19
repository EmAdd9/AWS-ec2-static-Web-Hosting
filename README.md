# Mini-Project : Hosting a static website on AWS

##  This demo project is describing an architecture for hosting a website on AWS (Amazon Web Services). The architecture is designed to provide high availability, fault tolerance, and scalability. Here's a summary of the architecture:

### Resources used in this project: 
##### Virtual Private Cloud (VPC)
- Public and Private Subnets: Isolates resources for added security. Public subnets have a route to the Internet Gateway, while private subnets don't.
- Route Tables: Control traffic between subnets and the internet.
- Internet Gateway (IGW): Enables communication between instances in the VPC and the internet.
- Network Address Translation (NAT) Gateway: Allows instances in private subnets to access the internet while maintaining privacy.
- 
##### Route 53

- Public and Private Hosted Zones: Manage DNS records for public and internal domains.
- Simple Routing Policies: Direct traffic to resources using simple rules like weighted or round-robin routing.

#### Application Load Balancer (ALB)
- Target Groups: Directs traffic to a group of instances based on rules or conditions.
- Host Header Routing: Routes traffic to different target groups based on the host header value in HTTP requests.

#### EC2 Instances
- Security Groups: Control inbound and outbound traffic to instances.
- Network Access Control Lists (NACLs): Provides an additional layer of network security at the subnet level.

#### Bastion Host 
- Acts as a secure gateway to access instances in the private subnet when required.
#### Auto Scaling Group (ASG)
- Dynamically adjusts the number of EC2 instances based on traffic demand, ensuring scalability and fault tolerance.

*These fundamental AWS resources work together to create a highly available, scalable, and secure web hosting environment. With automatic scaling and redundancy across multiple Availability Zones, the architecture ensures optimal performance and reliable operation for hosting the website on AWS.*

### Project Architecture:
![Project Diagram](AWS-EC2-web-hosting-arch.drawio.svg)

### What I did:
1. **Virtual Private Cloud (VPC): The VPC is set up with both public and private subnets distributed across two Availability Zones (AZs) for redundancy and high availability.**

2. **Internet Gateway: An Internet Gateway is attached to the VPC, allowing communication between instances within the VPC and the internet.**

3. **High Availability: Two Availability Zones are used to ensure that the application remains available even if one AZ experiences an outage.**

4. **Public Subnets: Resources such as the NAT Gateway, Bastion Host, and Load Balancer are placed in the public subnets to be accessible from the internet.**

5. **Private Subnets: The web servers are deployed in the private subnets to isolate them from direct internet access, enhancing security.**

6. **NAT Gateway: The NAT Gateway allows instances in the private subnets to access the internet for software updates, etc., while maintaining security.**

7. **EC2 Instances: The website is hosted on EC2 instances in the private subnets, providing a flexible and customizable hosting environment.**

8. **Application Load Balancer (ALB): The ALB is utilized to distribute incoming traffic among instances deployed across multiple Availability Zones, enhancing load distribution and fault tolerance.**

9. **Auto Scaling Group: The website's EC2 instances are managed by an Auto Scaling Group, which automatically adjusts the number of instances based on traffic and demand. This ensures the application is both scalable and fault-tolerant.**

10. **Route 53: The domain name for the website is registered with Route 53, which allows easy management and mapping of domain names to AWS resources.**

11. **GitHub Repository: Web files are stored in a GitHub repository, enabling version control, collaboration, and seamless deployment to the EC2 instances.**

**Overall, this architecture combines several AWS services to create a robust, scalable, and fault-tolerant web hosting environment, ensuring the website remains available and performs well under varying loads.**

#### Not finished, I will due contents soon....

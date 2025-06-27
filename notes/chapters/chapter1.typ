#import "@local/simple-note:0.0.1": *

= Introduction
There are many definitions exist for the *Data Center*:
- A *building* or portion of a building whose primary purpose is to house a computer room and its support areas.
- A *facility* used to house computer systems and associated components, such as telecommunications and storage systems. It generally includes redundant backup power supplies, redundant communications connections, environmental controls (e.g. air conditioning, fire suppression) and various security devices.
- *Centralized repository*, either physical or virtual, for the storage, management and dissemination of data and information organized around a particular body of knowledge or pertaining to a particular Business.

== Enterprise Data Center
An *Enterprise Data Center* is a data center with facilities wholly built, maintained, operated, and managed by the company providing the target service.
- *Pros:* Asset for the company, complete control of the operational activities.
- *Cons:* High capital investment, requires necessary expertise to design and run the data center.

#tip("Typical facility pick list for a DC")[
  - Highly secure site (not only IT but also building)
  - Redundant electrical, and current-conditioned, power distribution systems
  - Redundant climate control systems
  - Raised-floor system centers, integrated with multiple fire suppression systems
  - Office space as required
]

The Enterprise Data Center are always part of a business:
- Business exists if there is the possibility of making money
- Not all money from your business should be spent on the datacenter

Building a datacenters is not the only possibility, there are alternatives.

== Colocation Data Center
A *Colocation Data Center* is a data center with large facilities built to accommodate multiple businesses. The business rents its own space within the datacenter. It has possibility to fill the space with proprietary IT equipment or to rent some part of it from the co-locator.
- *Pros:* still high control on the IT equipment and operational environment, no need of DC design skills, lower capital investment, staff dedicated to guarantee operational and shared costs for high quality environment
- *Cons:* The datacenter is not more an asset, restrictions on maintenance accesses with regards to time or resources, IT equipment purchase and updates are on your own

== Managed Hosting Platforms
A *Managed Hosting Platform* is a data center managed by a third party. The business does not own or control the Data Center (or any space), the customer rents IT equipment and infrastructure it needs. Resources are not shared, still a single-tenant solution
- *Pros:* low capital investment, cost savings for small businesses, no need of expertise to design and run the datacenter.
- *Cons:* Higher operational costs, lower control on the operational activities, possibility of customer «lock-in» problem.

== Infrastructure
There are two kinds of infrastructure:
- *HW Infrastructures:*
  - *System-level:* Computing Infrastructures and Data Center Architectures, Rack/Structure;
  - *Node-level:* Servers (computation, HW accelerators), Storage (Type, technology), Networking (architecture and technology);
  - *Building-level:* Cooling systems, power supply, failure recovery
- *SW Infrastructures:*
  - *Virtualization:* Process/System VM, Virtualization Mechanisms (Hypervisor, Para/Full virtualization)
  - *Computing Architectures:* Cloud Computing (types, characteristics), Edge/Fog Computing, X-as-a service

== Computing Continuum
The computing continuum models a distributed environment incorporating endpoints, edge, and cloud processing elements.

#figure(image("../figures/computing-continuum.jpg"))

=== loT Devices
Small, low-power micro controllers or sensors with limited CPU, memory, and storage. Often battery-powered, focusing on data collection (e.g., temperature, motion, camera snapshots).
- *Use Cases:* Smart buildings (temperature/humidity monitoring), wearable health trackers, industrial machine sensors.
- *Constraints:* Must minimize energy usage and typically rely on lightweight communication protocols.

=== Edge/Fog Computing
- *Edge Nodes:* More capable than simple sensors, placed physically close to data sources to perform local data processing or filtering.
- *Fog Nodes:* Considered the "last mile" before the cloud, often residing in local networks or telecom infrastructure (like 5G base stations).
- *Advantages:*
  - *Reduced Latency:* Faster processing and real-time decisions (e.g., industrial control, autonomous vehicles).
  - *Bandwidth Efficiency:* Pre-aggregation or filtering reduces data sent to remote data centers.
- *Challenges:*
  - *Power/Cooling:* Edge servers are more powerful than IoT devices but must often operate outside traditional data center environments.
  - *Security & Management:* Distributing compute across many edge nodes complicates updates and monitoring.

=== Data Centers
- *Large-Scale Centralization:* High-performance servers, massive storage capacity, robust cooling/power infrastructure, and built-in redundancy.
- *Benefits:*
  - *Scalability:*  Ability to host thousands of servers and scale horizontally.
  - *Reliability:* Backup generators, UPS systems, and multi-tier redundancy.
  - *Global Access:* Data can be accessed worldwide via the internet.
- *Drawbacks:*
  - *High Power Consumption:* Energy and cooling demands are significant.
  - *Latency:* Distance from users or devices can add network delay.
  - *Cost:* Owning and operating large data centers entails substantial investment.

#pagebreak()

= Storage
Modern data centers handle extraordinary volumes of digital information, from user-generated media and enterprise logs to telemetry data produced by Internet of Things (IoT) devices.

While discussions often center on compute power and networking infrastructure, storage is no less essential. The ability to capture, store, and efficiently retrieve data underpins everything from basic file hosting to large-scale analytics and artificial intelligence pipelines.

This document explores *hard disk drives (HDDs)* as a critical element of data center storage, emphasizing the broader context of exponential data growth and how diverse storage technologies align with specific workload requirements.

== Storage Landscape and Data Growth
As the global appetite for data continues to expand, the basic challenge of where and how to
store digital information becomes more urgent. High-definition media uploads, continuous sensor streams, and AI-driven data generation push storage needs past what individuals or local servers can reasonably manage. Consequently, large-scale data centers absorb much of this burden, offering both the raw capacity and reliability needed to keep pace. Alongside *HDDs*, other key solutions like *solid-state drives (SSDs)*, *non-volatile memory express (NVMe)* devices, and tape archives occupy essential roles, each suited to a particular balance of speed, cost, and durability.

Despite the growing popularity of faster media such as SSDs, HDDs remain a cornerstone. Their cost per gigabyte is generally lower, allowing data centers to keep enormous datasets on hand even if much of that content is "warm" or "cool" rather than constantly accessed. Moreover, older but still-relevant technologies (like tape libraries) continue to find use for long-term archiving, illustrating the variety of strategies data centers employ to handle information across the "hot-to-cold" spectrum of storage.

== Storage Architecture
=== Direct Attached Storage (DAS)
Direct Attached Storage (DAS) refers to storage devices *directly connected* to a server or computer, such as *internal hard drives or external USB drives*.

*Advantages:*
- *High performance:* Fast data transfer due to direct connection.
- *Low cost:* Simple and inexpensive to set up.
- *Simple setup and management:* No networking knowledge required.

*Disadvantages:*
- *Limited scalability:* Hard to expand storage capacity.
- *No centralized storage:* Each server has its own storage, which leads to data silos.
- *Not shareable:* Difficult to share data across multiple users or servers.

=== Network Attached Storage (NAS)
Network Attached Storage (NAS) is a *dedicated file storage device* connected to a network, allowing *multiple users and devices* to access data over the network.

*Advantages:*
- *Centralized storage:* All data is stored in one location, making it easier to manage.
- *File sharing:* Users can easily share files across the network.
- *Scalability:* Can add more storage devices as needed.

*Disadvantages:*
- *Network dependency:* Performance can be affected by network speed and congestion.
- *Higher cost:* More expensive than DAS due to additional hardware and software.
- *Security concerns:* Exposed over the network, so access control is important.

=== Storage Area Network (SAN)
A Storage Area Network (SAN) is a *high-speed network* that connects multiple storage devices and servers, allowing them to share storage resources.

*Advantages:*
- *High performance:* Provides fast access to storage resources.
- *Scalability:* Can easily add more storage devices and servers.
- *Centralized management:* Simplifies storage management across multiple servers.
*Disadvantages:*
- *Complex setup:* Requires specialized knowledge to configure and manage.
- *Higher cost:* More expensive than NAS due to specialized hardware and software.



#pagebreak()

= HDD
HDDs use *spinning magnetic* platters to store data in concentric "tracks" accessed by read/write heads mounted on a mechanical arm. This physical design contrasts sharply with the purely electronic nature of SSDs, creating unique performance constraints. In particular, data centers using HDDs must account for seek times to move the actuator arm to the correct track, and rotational latencies as the disk spins the target sector beneath the head. These mechanical delays represent a fundamental difference from flash-based storage, where random access is nearly instantaneous by comparison.

From the perspective of an operating system, HDD capacity is abstracted into logical block addresses (LBAs). Files are split into clusters of LBAs, with metadata tracking which blocks belong to which file. Although this abstraction simplifies software design, it can introduce inefficiencies. Small files may waste space due to "internal fragmentation" while external fragmentation occurs if a file's clusters end up scattered across distant regions of the disk, causing extra seeks. Nevertheless, these trade-offs are typically accepted in exchange for the high-capacity, cost-effective nature of HDDs.

== Performance of HDDs
Because HDDs rely on mechanical motion, their performance is shaped by latency elements uncommon in more modern storage technologies.

"Seek time" is the delay required for the actuator arm to move over the target track, which can be modeled roughly as one-third of the maximum distance if the needed track is chosen at random.

Next, a rotational delay arises if the drive must wait for the requested sector to rotate beneath the read/write head—often averaging half a full rotation. Once positioned, the drive then reads or writes data in a continuous transfer; additional overhead from the internal controller is generally modest. While these latencies may appear small when measured in milliseconds, they add up quickly for workloads requiring thousands of random I/O operations. Additionally, in shared data center environments, the time needed to serve one request may leave others queued, extending practical response times beyond raw service latencies.

Thus, data centers often pair HDD arrays with caching systems, using faster solid-state technologies to absorb frequent random I/O while *reserving HDDs for less time-sensitive data*.

== HDDs in Data Centers
Hard disk drives typically serve as a foundation for *capacity-driven storage*. Large content repositories, unstructured data lakes, and certain enterprise databases can reside on HDD arrays to contain storage expenses. Many operators adopt multi-tiered designs: *data frequently accessed by real-time applications sits on SSDs, while older or less active data migrates to HDD volumes.* This distinction helps data centers satisfy performance expectations for mission-critical queries without incurring the higher cost of all-flash systems. Ensuring that data remains both accessible and secure, modern facilities rarely rely on single HDDs alone. RAID mechanisms or distributed file systems ensure redundancy, so the failure of one drive or even multiple drives does not compromise availability. This approach aligns with broader goals of high availability, as data centers strive to deliver robust uptime across a sprawling user base.

#figure(image("../figures/read-write.jpg"), caption: "Read/Write process in HDDs")

== Calculate the I/O service time
To calculate the I/O service time for an HDD, we need to consider the seek time, rotational latency, transfer time, and overhead control time. The formula is:
$
  T_("I/O") = T_("seek") + T_("rotation") + T_("transfer") + T_("overhead")
$

#example("mean service time of a I/O operation")[
  Consider read/write of a *sector* of 512 bytes = 0.5 KB:
  - data transfer rate = 50 MB/s
  - rotation speed = 10000 RPM (Round per Minute)
  - mean seek time = 6 ms
  - overhead controller = 0.2 ms

  $
    T_("rotation") = (60 times 1000 "ms") / (2 times 10000 "RPM") = 3 "ms" \
    T_("transfer") = (0.5 "KB" times 1000) / (50 "MB/s" times 1024) approx 0.01 "ms" \
    T_("I/O") = underbrace(6 "ms", "seek") + underbrace(3 "ms", "rotation") + underbrace(0.01 "ms", "transfer") + underbrace(0.2 "ms", "overhead") approx 9.21 "ms"
  $
]

The previous service times considers only the very pessimistic case where sectors are fragmented on the disk in worst possible way.
- Files are very small (each file is contained in one block)
- or the disk is very (externally) fragmented
Thus, each access to a sector requires to pay Rotational latency and Seek time. In many circumstances, this is not the case:
- files are larger than one block, and
- they are stored in a contiguous way
We can measure the *data locality* of a disk as the percentage of blocks that do not need seek or rotational latency to be found. In this case, the service time is:
$
  T_("I/O") = (1 - "Data locality") times (T_("seek") + T_("rotation")) + T_("transfer") + T_("overhead")
$

#example("Data  locality")[
  Calculate the average time for read/write a *sector* of 512 Byte = 0.5 KB
  - data locality = 75%
  - data transfer rate: 50 MB/sec
  - rotation speed: 10000 RPM (Round per Minute)
  - mean seek time: 6 ms
  - overhead controller: 0.2 ms
  $
    T_("rotation") = (60 times 1000 "ms") / (2 times 10000 "RPM") = 3 "ms" \
    T_("transfer") = (0.5 "KB" times 1000) / (50 "MB/s" times 1024) approx 0.01 "ms" \
    T_("I/O") = underbrace(0.25, "data locality") times (underbrace(6 "ms", "seek") + underbrace(3 "ms", "rotation")) + underbrace(0.01 "ms", "transfer") + underbrace(0.2 "ms", "overhead") approx 2.46 "ms"
  $
]

#example([influence of "not optimal" data allocation])[
  Consider time to transfer a *file* of 1MB (10 blocks of 1/10 MB "not well" distributed on disk)

  Case A (locality = 100%):
  - 1 initial seek: 6 ms
  - 1 rot. latency: 3 ms
  - 1 global transfer 1 MB: $(1 slash 50) times 1000 = 20 "ms"$
  - total time: 29 ms

  Case B (locality = 0%):
  - 1 seek: 6 ms
  - 1 rot. latency: 3 ms
  - 1 partial transfer (1/10): 2 ms
  - total time: 110 ms
]

#pagebreak()

= SSD

#pagebreak()

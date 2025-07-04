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
- *Edge Nodes:* *More capable* than simple sensors, placed physically close to data sources to perform local data processing or filtering.
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

== Data Center
Traditional data centers typically host *a large number of relatively small or medium-sized applications*, each applications is running one a dedicated hardware infrastructure that is de-coupled and protected from other systems in the same facility, applications tend not to communicate each other.

Those data centers host hardware and software for multiple organizational units or even different companies.

== Warehouse-scale Computers
WSCs belong to a single organization, use a relatively homogeneous hardware and system software platform, and share a common systems management layer.

WSCs run *a smaller number of very large applications* (or internet services). All of these applications rely on *Virtual Machines* (or Containers), and they access large, common services for block or database storage, load balancing, and so on, fitting very well with the WSC model.

== Geographic Areas and Regions
The world is divided into *Geographic Areas (GAs)*, defined by Geo-political boundaries (or country borders) and determined by data residency. In each GA there are at least 2 computing regions.

Customers see *regions* as the finer grain discretization of the infrastructure, multiple DCs in the same region are not exposed. *Too far for synchronous replication, but ok for disaster recovery.* Latency-defined perimeter (*2ms latency for the round trip*).

*Availability Zones (AZs)* are finer grain location within a single computing region
- allow customers to run mission critical applications with high availability and fault tolerance to datacenter failures
- Application-level synchronous replication among Azs
- 3 is minimum and enough for quorum


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

Four types of delay:
- *Rotational Delay:* Time to rotate the *desired sector* to the read head
- *Seek Time:* Time to move the read head to the *desired track*
- *Transfer Time:* Time to transfer the data from the disk to the host
- *Controller Overhead:* Overhead for the request management

#pagebreak()

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

== Disk  Scheduling
Caching helps improve disk performance, but it cannot make up for poor random accesses. If there are a queue of requests to the disk, they can be reordered to improve performance. Estimation of the request length is feasible knowing the position on the disk of the data. Several scheduling algorithms
- First come, first serve (*FCFS*)
- Shortest seek time first (*SSTF*)
- *SCAN*, otherwise know as the elevator algorithm
- *C-SCAN*, *C-LOOK*, etc.

=== First Come, First Serve (FCFS)
The simplest disk scheduling algorithm is First Come, First Serve (FCFS). Requests are processed in the order they arrive, without any reordering. While easy to implement, FCFS can lead to
long wait times, especially if a request is far from the current head position.

#figure(image("../figures/FCFS.jpg"), caption: "FCFS disk scheduling")

=== Shortest Seek Time First (SSTF)
The Shortest Seek Time First (SSTF) algorithm selects the request closest to the current head position, reducing the average seek time.

#figure(image("../figures/SSTF.jpg"), caption: "SSTF disk scheduling")

- *The good:* SSTF is optimal, and it can be easily implemented!
- *The bad:* SSTF is prone to starvation

=== SCAN (Elevator Algorithm)
The SCAN algorithm moves the disk arm in one direction, servicing requests until it reaches the end of the disk, then reverses direction and services requests on the way back. This approach reduces the average seek time and *avoids starvation*.

#figure(image("../figures/SCAN.jpg"), caption: "SCAN disk scheduling")

- *The good:* reasonable performance, no starvation
- *The bad:* average access times is higher for requests at high and low addresses

=== C-SCAN (Circular SCAN)
The C-SCAN algorithm is a variation of SCAN that only services requests in one direction. When it reaches the end of the disk, it jumps back to the beginning without servicing any requests on the way back. This approach provides a more uniform wait time for all requests.

#figure(image("../figures/C-SCAN.jpg"), caption: "C-SCAN disk scheduling")

- *The good:* fairer than SCAN
- *The bad:* worse performance than SCAN

=== C-LOOK
The C-LOOK  algorithm is similar to C-SCAN but instead of jumping back to the beginning of the disk, it jumps to the closest request in the opposite direction. This reduces unnecessary movement of the disk arm.

#figure(image("../figures/C-LOOK.jpg"), caption: "C-LOOK disk scheduling")

- *The good:* fairer than C-SCAN, no unnecessary movement
- *The bad:* worse performance than C-SCAN

#pagebreak()

= SSD
Solid State Drives (SSDs) are a type of storage device that use flash memory to store data. Unlike traditional hard disk drives (HDDs), which rely on spinning disks and mechanical read/write heads, SSDs have no moving parts. This fundamental difference leads to several key advantages and characteristics that make SSDs particularly well-suited for modern computing environments.

== Flash Translation Layer (FTL)
The Flash Translation Layer (FTL) is a crucial component of SSDs that manages the mapping between logical block addresses (LBAs) used by the operating system and the physical locations in the NAND flash memory. The FTL handles several important tasks:
- Data Allocation and Address translation
- Garbage Collection
- Wear Leveling

== Core Components of SSDs
=== NAND Flash Memory
NAND flash memory is the main storage medium in SSDs. Stores data in memory cells, typically using these types:
- *SLC (Single-Level Cell):* Stores one bit per cell
- *MLC (Multi-Level Cell):* Stores two bits per cell
- *TLC (Triple-Level Cell):* Stores three bits per cell
- *QLC (Quad-Level Cell):* Stores four bits per cell

== Logical organization
=== Blocks
The *block* in SSDs is the smallest unit that can be erased. It consists of multiple pages and can be cleaned using the *ERASE* command.

=== Pages
The *page* is the smallest unit that can be read/written. It is a sub-unit of an erase block and consists of the number of bytes which can be read/written in a single operations through the *READ* or *PROGRAM* commands. Pages can be in three states:
- *Empty:* They do not contain data.
- *Dirty (or INVALID):* They contain data, but this data is no longer in use (or never used).
- *In use (or VALID):* The page contains data that can be actually read.

#pagebreak()

= RAID
*RAID* stands for *Redundant Array of Independent Disks*. It's a data storage technology that combines multiple physical hard drives into a single logical unit for the purposes of *redundancy*, *performance improvement*, or both. Two orthogonal techniques:
- *data striping:* to improve performance
- *redundancy:* to improve reliability

== Data Striping
Data are written sequentially (a vector, a file, a table, ......) in units (stripe unit: bit, byte, blocks) on multiple disks according to a cyclic algorithm  (round robin).
- *stripe unit:* dimension of the unit of data that are written on a single disk
- *stripe width:* number of disks considered by the striping algorithm

== RAID Level 0
Data are written on a *single logical disk* and split in several blocks distributed across the disks according to a striping algorithm.
- *used where performance and capacity, rather than reliability*, are the primary concerns, minimum two drives required
- *lowest cost* because it does not employ redundancy (no error-correcting codes are computed and stored)
- *best write performance* (it does not need to update redundant data and it is parallelized)
- *single* disk failure will result in data loss

How do you access specific data blocks?
- Disk = logical_block_number % number_of_disks
- Offset = logical_block_number / number_of_disks

=== Analysis of RAID 0
- Capacity: N, All space on all drives can be filled with data
- Reliability: 0, No redundancy, if one disk fails, all data is lost
- Sequential read and write: $N times S$, Full parallelization across drives
- Random read and write: $N times R$, Full parallelization across all drives

#pagebreak()

== RAID Level 1
RAID 0 offers high performance, but *zero error recovery*, the key idea is to make two copies of all data (minimum 2 disk drives).
- *high reliability:* when a disk fails  the second copy is used
- *Fast writes* (no error correcting code should be computed) - but still slower than standard disks (due to duplication)
- *high costs* (50% of the capacity is used)

=== Analysis of RAID 1
- *Capacity:* N/2, Half of the total space is used for data storage
- *Reliability:* 1, If one disk fails, the other copy is still available
- *Sequential read:* $N / 2 times S$, Half of the read blocks are wasted, thus halving throughput
- *Sequential write:* $N / 2 times S$, Two copies of all data, thus half throughput
- *Random read:* $N times R$, Best case scenario for RAID 1, Reads can parallelize across all disks
- *Random write:* $N / 2 times R$, Two copies of all data, thus half throughput

== RAID Level 4
RAID 4 is similar to RAID 0, but it adds a *dedicated parity disk* to store error-correcting codes for the data blocks. This allows for recovery in case of a single disk failure.
- *dedicated parity disk* is used to store the error-correcting codes for the data blocks
- *high reliability:* when a disk fails the parity disk is used to recover the data

=== Analysis of RAID 4
- *Capacity:* N - 1, One disk is used for parity
- *Reliability:* 1, If one disk fails, the parity disk can be used to recover the data
- *Sequential read:* $(N - 1) times S$, Parity disk is not read
- *Sequential write:* $(N - 1) times S$, Parity must be updated
- *Random read:* $(N - 1) times R$, Best case scenario, reads can parallelize across all disks
- *Random write:* $R / 2$, Writes serialize due to the parity drive, Each write requires 1 read and 1 write of the parity drive, thus $R / 2$

== Reliability Calculation
Let's assume a constant Failure Rate, an exponentially distributed time to failure, and the case of independent failures.

RAID 0 has no redundancy: $"MTTF"_"RAID 0" = "MTTF"_"disk" = "MTTD"_"singleDisk" / "Disks"$

RAID levels (>0) uses redundancy to improve reliability. When a disk fails, it should be replaced and the information reconstructed on the new disk using the redundant information. MTTR is the time needed for this action.

- *RAID0*: $"MTTF"_"RAID0" = "MTTF"_"singleDisk"slash N$
- *RAID1*: $"MTTF"_"RAID1" = ("MTTF"_"singleDisk")^2 slash (N times "MTTR")$
- *RAID1+0*: $"MTTF"_"RAID1" = ("MTTF"_"singleDisk")^2 slash (N times "MTTR")$
- *RAID0+1*: $"MTTF"_"RAID1" = ("MTTF"_"singleDisk")^2 slash (N times G times "MTTR")$
- *RAID4*: $"MTTF"_"RAID4" = ("MTTF"_"singleDisk")^2 slash (N times (N - 1) times "MTTR")$
- *RAID5*: $"MTTF"_"RAID5" = ("MTTF"_"singleDisk")^2 slash (N times (N - 1) times "MTTR")$
- *RAID6*: $"MTTF"_"RAID6" = 2 times ("MTTF"_"singleDisk")^3 slash (N times (N - 1) times (N - 2) times "MTTR"^2)$

#pagebreak()

= Dependability

== Reliability
The reliability is the ability of a system or component to perform its required functions under stated conditions for a specified period of time.

#definition("Reliability")[
  $R(t)$ is the probability that the system will operate correctly in a specified operating environment until time $t$.

  $R(t)$ is a non-increasing function varying from 1 to 0 over $[0, infinity]$.

  $
                            R(0) & = 1 \
    lim_(t arrow +infinity) R(t) & = 0 \
      f(x) = - (d R (t)) / (d t)
  $
]

== Availability
Availability is the degree to which a system or component is operational and accessible when required for use.

Availability = Uptime / (Uptime + Downtime)

$
  A = "MTTF" / ("MTTF" + "MTTR")
$

== Reliability Block Diagrams
An inductive model where a system is divided into blocks that represent distinct elements such as components or subsystems. Every element in the RBD has its own reliability (previously calculated or modelled).

In general, if system S is composed by components with a reliability having an exponential distribution (very common case)
$
  R_s(t) = e^(-lambda_s t)
$
where
$
  lambda_s = sum_(i=1)^n lambda_i
$

#pagebreak()

= Data Center Building
== Cooling Systems
IT equipment generates *a lot of heat:* the *cooling system* is usually a very expensive component of the datacenter, and it is composed by *coolers*, *heat-exchangers* and *cold water tanks*.

=== Open-loop
The simplest topology is fresh air cooling (or air economization) essentially, opening the windows. This is a single *open-loop* system.

#figure(image("../figures/Open-loop.jpg"))

Free cooling, i.e., open-loop, refers to the use of cold outside air to either help the production of chilled water or directly cool servers. It is not completely free in the sense of zero cost, but it involves very low-energy costs compared to chillers.

=== Closed-loop
*Closed-loop* systems come in many forms, the most common being the air circuit on the data center floor.
- The goal is to *isolate and remove heat from the servers* and transport it to a heat exchanger.
- Cold air flows to the servers, heats up, and eventually reaches a heat exchanger to cool it down again for the next cycle through the servers.

=== Data-center corridors
*Server Racks are NEVER BACK-to-BACK.*  Corridors where servers are located are split into cold aisle, where the front panels of the equipment is reachable, and warm aisle, where the back connections are located.

Cold air flows from the front (cool aisle), cools down the equipment, and leaves the room from the back (warm aisle).

=== Two Or Three Loops
The airflow through the underfloor plenum, the racks, and back to the CRAC (a 1960s term for computer room air conditioning) defines the primary air circuit, i.e., the *first loop*.

The *second loop* (the liquid supply inside the CRACs units) leads directly from the CRAC to external heat exchangers (typically placed on the building roof) that discharge the heat to the environment.

A three-loop system commonly used in large-scale data center

#figure(image("../figures/three-loop.jpg"))

=== Chillers and Cooling Towers
A water-cooled chiller can be thought of as a water-cooled air conditioner.

Cooling towers cool a water stream *by evaporating* a portion of it into the atmosphere. They do not work as well in very cold climates because they need additional mechanisms to prevent ice formation.

=== Comparison
Each topology presents tradeoffs in complexity, efficiency, and cost:
- *Fresh air cooling* can be very efficient but does not work in all climates, requires filtering of airborne particulates, and can introduce complex control problems.
- *Two-loop systems* are easy to implement, relatively inexpensive to construct, and offer isolation from external contamination, but typically have lower operational efficiency.
- *A three-loop system* is the most expensive to construct and has moderately complex controls, but offers contaminant protection and good efficiency.

=== In Rack Cooling
In-rack cooler adds an air-to-water heat exchanger at the back of a rack so the hot air exiting the servers immediately flows over coils cooled by water, essentially reducing the path between server exhaust and CRAC input.

=== In Row Cooling
In-row cooling works like in-rack cooling except the cooling coils aren't in the rack, but *adjacent to the rack*.

=== Liquid cooling
We can directly cool server components using cold plates, i.e., local liquid-cooled heat sinks:
- *Impractical* to cool all compute components with cold plates.
- Components with the highest power dissipation are targeted for liquid cooling while other components are air-cooled.

The liquid circulating through the heat sinks transports the heat to a liquid-to-air or liquid-to-liquid heat exchanger that can be placed close to the tray or rack, or be part of the data center building (such as a cooling tower).

== Tier of Data Centers
#table(
  columns: (auto, 1fr, auto),
  align: (center, left, center),
  stroke: 1pt + gray,
  fill: (x, y) => if y == 0 { rgb("#d4e6d4") } else { rgb("#e8f5e8") },

  [*Tier Level*], [*Requirements*], [*Downtime*],

  [*1*],
  [
    - Single non-redundant distribution path serving the IT equipment\
    - Non-redundant capacity components\
    - Basic site infrastructure with expected availability of 99.671%
  ],
  [#text(red)[*29h*]],

  [*2*],
  [
    - Meets or exceeds all Tier 1 requirements\
    - Redundant site infrastructure capacity components with expected availability of 99.741%
  ],
  [#text(red)[*22,5h*]],

  [*3*],
  [
    - Meets or exceeds all Tier 2 requirements\
    - Multiple independent distribution paths serving the IT equipment\
    - All IT equipment must be dual-powered and fully compatible with the topology of a site's architecture\
    - Concurrently maintainable site infrastructure with expected availability of 99.982%
  ],
  [#text(red)[*1,5h*]],

  [*4*],
  [
    - Meets or exceeds all Tier 3 requirements\
    - All cooling equipment is independently dual-powered, including chillers and heating, ventilating and air-conditioning (HVAC) systems\
    - Fault-tolerant site infrastructure with electrical power storage and distribution facilities with expected availability of 99.995%
  ],
  [#text(red)[*0,5h*]],
)

#pagebreak()

= Networking
== Traffic
*East-West traffic* refers to data traffic that flows between servers within a data center, typically involving communication between different applications or services hosted on those servers. This type of traffic is often characterized by *high volumes and low latency* requirements, as it supports internal operations like database queries, microservices interactions, and distributed computing tasks.

*East-West traffic usually larger than North-South traffic.
*

== Three-Tier Network
*Three-tier* is a simple DCN topology, servers are connected to the DCN through *access switches*, each access-level switch is connected to at least two *aggregation-level* switches. Aggregation-level switches are connected to *core-level* switches (gateways).

#figure(image("../figures/three-tier-network.jpg"))

== ToR (TOP of Rack)
All servers in a rack are connected to a ToR access switch within the same rack. Aggregation switches are in dedicated racks or in shared racks with other ToR switches and servers. The number of cables is limited a simpler cabling. The number of ports per switch is also limited (lower costs).

== EoR (End of Row)
Aggregation Switches are positioned one per corridor, at the end of a line of rack. servers in a racks are connected directly to the aggregation switch in another rack, Aggregation switches must have a larger number of ports more complex cabling, longer cables are required (higher costs). Patch panel to connect the servers to the aggregation switch.

#pagebreak()

= Virtualization
A *Virtual Machine (VM)* is a logical abstraction able to provide a virtualized execution environment. More specifically, a VM:
- provides identical software behavior
- consists in a combination of physical machine and virtualizing software
- may appear as different resources than physical machine
- may result in different levels of performances

Its tasks are:
- To map virtual resources or states to corresponding physical ones
- To use physical machine instructions/calls to execute the virtual ones.

Two types of Virtual Machines:
- *Process VMs*
- *System VMs*

The implementation of virtualization can be done in two ways:
- *Hardware-level virtualization:* Virtualization layer is placed between hardware and OS.
- *Application-level virtualization:* A virtualization layer is placed between the OS and some applications

== Process Virtual Machines
Process VMs is able to support an individual process, the virtualizing software is placed at the *ABI interface*, on top of the OS/hardware combination.

The virtualizing software emulates both user-level instructions and operating system calls. The virtualization software is usually called *Runtime Software*.

== System Virtual Machines
System VMs provide a complete system environment that can  support an operating system (potentially with many user processes). It provides operating system running in it access to underlying hardware resources (networking, I/O, a GUI).

Virtualizing software placed between hardware and software (emulates the ISA interface seen by software). The virtualization software is called *VMM (Virtual Machine Monitor)*. The VMM can provide its functionality either working directly on the hardware, or running on another OS.

#figure(image("../figures/host-guest.jpg"))

- *Host:* the underlying platform supporting the environment/system
- *Guest:* the software that runs in the VM environment as the guest.

== Virtual Machine Managers (Hypervisors)
An application that:
- manages the virtual machines
- mediates access to the hardware resources on the physical host system
- intercepts and handles any privileged or protected instructions issued by the virtual machines

There are two main types of hypervisors:
- *Type 1 (Bare-Metal) Hypervisors:* *These run directly on the host's hardware*, acting as the primary operating system. They are generally more efficient and secure, making them the standard for enterprise data centers. Examples include VMware vSphere/ESXi, Microsoft Hyper-V, and the open-source KVM.
- *Type 2 (Hosted) Hypervisors:* These run as an application on top of a conventional *host operating system*. They are easier to install and manage, making them suitable for desktop environments and development purposes. Examples include VMware Workstation, Oracle VirtualBox, and Parallels Desktop.

#figure(table(
  columns: 3,
  stroke: 0.5pt,
  align: left,
  [*Feature*], [*Type 1 Hypervisor*], [*Type 2 Hypervisor*],
  [Runs On], [Bare-metal hardware], [Host operating system],
  [Performance], [High], [Moderate to low],
  [Security], [Strong], [Weaker (depends on host OS)],
  [Use Case], [Production, enterprise], [Testing, development, education],
  [Setup Complexity], [Complex], [Simple],
))

== System-Level Virtualization Techniques
A key aspect of hypervisor-based virtualization is how it handles privileged instructions from the guest OS.

=== Full Virtualization
*Full virtualization* uses a technique called binary translation to dynamically rewrite and translate these instructions, allowing an unmodified guest OS to run in *complete isolation*. However, this translation process can introduce performance overhead. To address this, modern processors from Intel (VT-x) and AMD (AMD-V) offer hardware-assisted virtualization. These CPU extensions provide a new execution mode that allows the hypervisor to more efficiently handle privileged instructions, significantly improving the performance of virtual machines.

=== Paravirtualization
*Paravirtualization* is a variation of hypervisor-based virtualization that aims to improve performance by modifying the guest operating system's kernel. In a paravirtualized environment, the guest OS is aware that it is running on a hypervisor and includes special drivers to communicate directly with it. This "cooperative" approach eliminates the need for the hypervisor to perform complex binary translation of privileged instructions.

By using these specialized "hypercalls," the guest OS can interact more efficiently with the hypervisor for tasks like memory management and I/O operations. The main advantage of paravirtualization is reduced overhead and near-native performance for the guest. However, its primary drawback is the requirement to modify the guest OS, which can limit the choice of supported operating systems and create maintenance challenges. The Xen hypervisor is a well-known example that heavily utilizes paravirtualization.

== Containers
Containers are *pre-configured packages*, with everything you need to execute the code (code, libraries, variables and configurations) in the target machine. Shares host OS kernel; only the app and its dependencies are containerized.

The main advantage of containers is that their behavior is *predictable, repeatable and immutable*:
- When I create a "master" container and duplicate it on another server, *I know exactly how it will be executed*
- There are no unexpected errors when moving it to a new machine or between environments

Containers are:
- *Flexible:* even the most complex applications can be containerized;
- *Light:* the containers exploit and share the host kernel;
- *Interchangeable:* updates and updates can be distributed on the fly;
- *Portable:* you can create locally, deploy in the Cloud and run anywhere;
- *Scalable:* it is possible to automatically increase and distribute replicas of the container;
- *Stackable:* containers can be stacked vertically and on the fly.

#pagebreak()

= Cloud Computing
Cloud computing is a coherent, large-scale, publicly accessible collection of computing, storage, and networking resources.

Hardware resources (CPU, RAM, etc.) are partitioned and shared among multiple *virtual machines (VMs)*. The virtual machine monitor (VMM) governs the access to the physical resources among running VMs.

== Types of Clouds
=== Public Cloud
A Public Cloud is a cloud infrastructure owned and operated by third-party cloud service providers (e.g., Amazon Web Services, Microsoft Azure, Google Cloud Platform). The infrastructure is shared among multiple organizations (tenants), and services are delivered over the Internet.

Public clouds are cost-effective and scalable, requiring no upfront hardware investment. However, they raise concerns about data privacy, limited control, and compliance, especially in sensitive or regulated industries.

Ideal for startups, software development, and non-sensitive workloads, where scalability and low costs are critical. It democratizes access to computing resources, allowing even small businesses to access enterprise-grade IT infrastructure.


=== Private Cloud
A Private Cloud is a cloud environment exclusively used by a single organization. It can be hosted on-premises or by a third party, but the infrastructure is not shared with others.

Private clouds offer greater control, security, and customization. However, they require significant capital expenditure and internal IT expertise to manage effectively.

Best suited for large enterprises, government agencies, or financial institutions that must comply with strict regulatory requirements and demand full control over their data and operations.

=== Community Cloud
A Community Cloud is shared by several organizations with similar interests or requirements (e.g., regulatory compliance, security, mission). It is jointly managed or hosted by one of the participants or a third-party provider.

Community clouds promote collaboration and resource sharing while maintaining better privacy than public clouds. However, they can be complex to govern and sustain long-term due to shared responsibilities and costs.

Useful in healthcare, research, education, or public sector collaborations, where multiple institutions must adhere to common policies or data standards.

=== Hybrid Cloud
A Hybrid Cloud combines two or more cloud types (typically public and private) that remain distinct but are integrated to allow data and application portability.

Hybrid clouds offer flexibility—sensitive data can be kept in a private cloud, while less critical workloads are offloaded to a public cloud. Challenges include managing interoperability and maintaining consistent security policies.

Highly beneficial for organizations undergoing digital transformation, enabling a balance between performance, security, and cost. Often used for cloud bursting (handling peak loads in the public cloud) or for disaster recovery strategies.

#set table(stroke: 0.5pt + black)

#table(
  columns: (1.2fr, 1fr, 1fr, 1fr, 1fr),
  align: (left, center, center, center, center),
  fill: (x, y) => if y == 0 { gray.lighten(70%) } else { white },

  // Header row
  [*Characteristic*], [*Public Cloud*], [*Private Cloud*], [*Community Cloud*], [*Hybrid Cloud*],

  // Infrastructure ownership
  [*Infrastructure Ownership*],
  [Third-party provider],
  [Single organization or dedicated provider],
  [Shared among community members],
  [Mixed ownership model],

  // Access control
  [*Access Control*],
  [Multi-tenant shared access],
  [Single-tenant exclusive access],
  [Limited multi-tenant within community],
  [Varies by component],

  // Cost structure
  [*Cost Structure*],
  [Pay-as-you-use, low upfront],
  [High upfront, predictable ongoing],
  [Shared costs among members],
  [Mixed cost model],

  // Scalability
  [*Scalability*],
  [Virtually unlimited],
  [Limited by private infrastructure],
  [Limited by community resources],
  [High flexibility],

  // Security control
  [*Security Control*],
  [Provider-managed, standardized],
  [Full organizational control],
  [Shared governance model],
  [Varies by component],

  // Compliance
  [*Compliance*],
  [Provider compliance frameworks],
  [Full customization possible],
  [Industry-specific compliance],
  [Flexible compliance approach],

  // Deployment complexity
  [*Deployment Complexity*],
  [Low - provider managed],
  [High - requires expertise],
  [Medium - shared responsibility],
  [High - integration complexity],

  // Typical use cases
  [*Typical Use Cases*],
  [Startups, web applications, development/testing],
  [Large enterprises, government, regulated industries],
  [Healthcare consortiums, education, research],
  [Digital transformation, variable workloads],

  // Primary advantages
  [*Primary Advantages*],
  [Cost-effective, rapid deployment, global reach],
  [Maximum control, security, customization],
  [Shared costs, industry compliance, collaboration],
  [Flexibility, optimization, gradual migration],

  // Primary challenges
  [*Primary Challenges*],
  [Limited control, compliance concerns, vendor lock-in],
  [High costs, complexity, maintenance burden],
  [Governance complexity, limited resources],
  [Integration complexity, management overhead],
)

#pagebreak()

= Performance
The total effectiveness of a computer system in terms
- throughput
- response time
- availability

== Way to evaluate system quality
Use of intuition and trend extrapolation. But Unfortunately, those who possess these qualities in sufficient quantity are rare.

Experimental evaluation of alternatives. Experimentation is always valuable, often required, and sometimes the approach of choice.

== Operational Laws
Operational laws are based on *observable variables* --- values which we could derive from watching a system over a finite period of time. We assume that the system receives requests from its environment. Each request generates a *job* or *customer* within the system. When the job has been processed the system responds to the environment with the completion of the corresponding request.

If we observed such an abstract system we might measure the following quantities:
- T, the length of *time* we observe the system
- A, the number of request *arrivals* we observe
- C, the number of request *completions* we observe
- B, the total amount of time during which the system is *busy* ($B lt.eq T$)
- N, the average *number of jobs* in the system

From these observed values we can derive the following four important quantities:
- $lambda = A / T$, the *arrival* rate
- $X = C / T$, the *throughput* or completion rate
- $U=B/T$, the *utilization*
- $S = B / C$, the *mean service time* per completed job

We will assume that the system is job flow balanced. The number of arrivals is equal to the number of completions during an observation period, i.e. A = C.

== Demand
Demand (service demand time) is a measure of the total time a resource takes to process a service request.
$
  D_i = V_i times S_i
$
where
- $D_i$ is the demand at resource $i$
- $V_i$ is the visit count at resource $i$
- $S_i$ is the service time at resource $i$

== Utilization Law
Let us recall the following definitions for a resource $k$:
- Throughput: $X_k = C_k / T_k$
- Service time: $S_k = B_k / C_k$
- Utilization: $U_k = B_k / T$
we can derive (utilization law):
$
  U_k = X_k S_k = D_k X
$

In an observation interval we can count not only completions external to the system, but also the number of completions at each resource within the system. Let $C_k$ is the number of completions at the k-th resource to the number of system completions.

We define the visit count
$
  V_k = C_k / C
$

== Forced Flow Law
$
  X_k = X times V_k
$

== Response Time Law
$
  R = N / X - Z
$
where
- $R$ is the response time of a system
- $N$ is the number of users
- $X$ is the throughput
- $Z$ is the think time (the time a user spends thinking about the next request).

== Little's Law
If the think time is zero, $Z=0$ and $R=N/X$, then the response time law simply becomes Little's Law
$
  N = X times R
$

=== Open Model
The resource within a system which has the greatest service demand is known as the bottleneck resource or bottleneck device, and its service demand is $"max"_k {D_k}$, denoted as $D_max$.

Bound for the response time:
$
  R gt.eq R_min = sum_k D_k
$

Bound for the throughput:
$
  X lt.eq 1 / D_max
$

=== Closed Model
$
  R gt.eq N times D_max - Z
$

Bound due to Think Time:
$
  X lt.eq N / (D + Z)
$
Bound due to Bottleneck Device:
$
  X lt.eq 1 / D_max
$

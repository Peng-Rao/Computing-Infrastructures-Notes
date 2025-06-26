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

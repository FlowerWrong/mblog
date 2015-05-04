## [Open-Source Service Discovery](http://jasonwilder.com/blog/2014/02/04/service-discovery-in-the-cloud/)

Service discovery is a key component of most distributed systems and service oriented architectures. The problem seems simple at first: How do clients determine the IP and port for a service that exist on multiple hosts?
服务发现大多存在于分布式系统合面向服务的架构,以键组件的形式存在. 问题似乎很简单: 在多主机的石猴客户端走哪个服务的ip和端口.

Usually, you start off with some static configuration which gets you pretty far. Things get more complicated as you start deploying more services. With a live system, service locations can change quite frequently due to auto or manual scaling, new deployments of services, as well as hosts failing or being replaced.
通常,我们图快采用静态文件来配置.当需要部署到多主机的时候,事情变得复杂了.在一个良好系统的中,服务可以十分方便的定位,因为自动扩展,......

Dynamic service registration and discovery becomes much more important in these scenarios in order to avoid service interruption.
动态的服务注册和发现变得越来越重要,未了避免在這種情況下服務中斷.

This problem has been addressed in many different ways and is continuing to evolve. We’re going to look at some open-source or openly-discussed solutions to this problem to understand how they work. Specifically, we’ll look at how each solution uses strong or weakly consistent storage, runtime dependencies, client integration options and what the tradeoffs of those features might be.

We’ll start with some strongly consistent projects such as Zookeeper, Doozer and Etcd which are typically used as coordination services but are also used for service registries as well.

We’ll then look at some interesting solutions specifically designed for service registration and discovery. We’ll examine Airbnb’s SmartStack, Netflix’s Eureka, Bitly’s NSQ, Serf, Spotify and DNS and finally SkyDNS.

#### The Problem

There are two sides to the problem of locating services. Service Registration and Service Discovery.
定位服务存在两个方面的问题.服务注册合服务发现.

    Service Registration - The process of a service registering it’s location in a central registry. It usually register it’s host and port and sometimes authentication credentials, protocols, versions numbers, and/or environment details.
    Service Discovery - The process of a client application querying the central registry to learn of the location of services.

* 服务注册- 通常注册主机,端口,验证信息,协议,版本号,环境
* 服务发现-

Any service registration and discovery solution also has other development and operational aspects to consider:

    Monitoring - What happens when a registered service fails? Sometimes it is unregistered immediately, after a timeout, or by another process. Services are usually required to implement a heartbeating mechanism to ensure liveness and clients typically need to be able to handle failed services reliably.
    Load Balancing - If multiple services are registered, how do all the clients balance the load across the services? If there is a master, can it be deteremined by a client correctly?
    Integration Style - Does the registry only provide a few language bindings, for example, only Java? Does integrating require embedding registration and discovery code into your application or is a sidekick process an option?
    Runtime Dependencies - Does it require the JVM, Ruby or something that is not compatible with your environment?
    Availability Concerns - Can you lose a node and still function? Can it be upgraded without incurring an outage? The registry will grow to be a central part of your architecture and could be a single point of failure.

* 监控- 服务注册失败
* 负载均衡- 如果多个服务被注册,
* 集成方式-
* 运行环境依赖-
* 高可用性-

#### General Purpose Registries

These first three registries use strongly consistent protocols and are actually general purpose, consistent datastores. Although we’re looking at them as service registries, they are typically used for coordination services to aid in leader election or centralized locking with a distributed set of clients.

#### Single Purpose Registries

These next few registration services and approaches are specifically tailored to service registration and discovery. Most have come about from actual production use cases while others are interesting and different approaches to the problem. Whereas Zookeeper, Doozer and Etcd could also be used for distributed coordination, these solutions don’t have that capability.

#### Summary

We’ve looked at a number of general purpose, strongly consistent registries (Zookeeper, Doozer, Etcd) as well as many custom built, eventually consistent ones (SmartStack, Eureka, NSQ, Serf, Spotify’s DNS, SkyDNS).

Many use embedded client libraries (Eureka, NSQ, etc..) and some use separate sidekick processes (SmartStack, Serf).

Interestingly, of the dedicated solutions, all of them have adopted a design that prefers availability over consistency.

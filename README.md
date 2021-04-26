# docker
AWS-training docker/docker-compose




![Untitled Diagram](https://user-images.githubusercontent.com/80498761/116085381-589d1f80-a6d1-11eb-80d5-99d174bd435f.png)


Docker的四种网络模式：
1. host模式：启动的容器将不会获得一个独立的 Network Namespace，而是和宿主机共用一个 Network Namespace
2. container模式：新创建的容器和已经存在的一个容器共享一个 Network Namespace，不和宿主机共享 Network Namespace
3. none模式：新建的容器拥有自己的 Network Namespace，但是没有任何网络配置（网卡、IP、路由等）
4. bridge模式：bridge 模式是 Docker 默认的网络设置，此模式会为每一个容器分配 Network Namespace、设置 IP 等，并将一个主机上的 Docker 容器连接到一个虚拟网桥上。当 Docker server 启动时，会在主机上创建一个名为 docker0 的虚拟网桥，此主机上启动的 Docker 容器会连接到这个虚拟网桥上

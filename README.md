# Kubernetes 离线安装包

KubeOperator 提供完整的 Kubernetes 离线安装包，每个安装包会被构建成一个独立容器镜像供 KubeOperator 使用，离线安装包中包括以下三种内容：

- Kubenetes 核心组件：包括 Kubenetes、Docker 及 etcd；
- Kubenetes 附属组件（镜像）：包括网络、存储、监控、Dashboard 及常用工具；
- 操作系统 RPM 包：除 CentOS 7.6 Minimal 外的其他必备 RPM。

本分支对应的 Kubernetes 离线包版本是 1.15.5，具体内容及版本信息如下所示。

## 1. Kubenetes 核心组件

|  分类  |  组件名称   | 版本  |
|  ---- |  ----  | ----  |
| 核心 | kubernetes  | 1.15.5 |
| 核心 | etcd  | 3.3.10 |
| 核心 | docker  | docker-ce-18.09.9 |

## 2. Kubenetes 附属组件（镜像）

|  分类  |  组件名称   | 版本  |
|  ---- |  ----  | ----  |
| 网络 | quay.io/coreos/flannel | v0.11.0-amd64 |
| 网络 | calico/node | v3.7.3 |
| 网络 | calico/cni | v3.7.3 |
| 网络 | calico/kube-controllers | v3.7.3 |
| 网络 | docker.io/coredns/coredns | 1.6.0 |
| 网络 | docker.io/traefik | v1.7.11 |
| 网络 | f5networks/k8s-bigip-ctlr | 1.9.2 |
| 存储 | quay.io/external_storage/nfs-client-provisioner | v3.1.0-k8s1.11 |
| 监控 | docker.io/grafana/grafana | v1.7.11 |
| 监控 | quay.io/prometheus/alertmanager | v0.15.2 |
| 监控 | quay.io/prometheus/node-exporter | v1.7.11 |
| 监控 | quay.io/prometheus/prometheus| v2.4.3 |
| 监控 | quay.io/prometheus/pushgateway| v0.5.2 |********
| 监控 | quay.io/coreos/kube-state-metrics| v1.4.0 |
| Dashboard | kubernetesui/dashboard| v2.0.0-beta4 |
| Dashboard | kubernetesui/metrics-scraper| v1.0.1 |
| 工具 | gcr.io/google-containers/pause-amd64| 3.1 |
| 工具 | docker.io/registry| 2 |
| 工具 | docker.io/konradkleine/docker-registry-frontend| v2 |
| 工具 | gcr.io/kubernetes-helm/tiller| v2.15.0 |
| 工具 | quay.io/coreos/configmap-reload| v0.0.1 |
| 工具 | docker.io/appropriate/curl| edge |
| 工具 | weaveworks/scope| 1.11.5 |
| 工具 | quay.io/comcast/kuberhealthy | v1.0.2 |

## 3. RPM 包（基于 CentOS 7.6 Minimal）

|  分类  |  组件名称  |
|  ---- |  ----   |
| RPM | dnsmasq  | 
| RPM | chrony  | 
| RPM | ntpdate | 
| RPM |  rpcbind | 
| RPM |  nfs-utils | 
| RPM | ntpdate | 

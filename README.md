# Kubernetes 离线安装包

KubeOperator 提供完整的 Kubernetes 离线安装包，每个安装包会被构建成一个独立容器镜像供 KubeOperator 使用，离线安装包中包括以下三种内容：

- Kubenetes 核心组件：包括 Kubenetes、Docker 及 etcd；
- Kubenetes 附属组件（镜像）：包括网络、存储、监控、Dashboard 及常用工具；
- 操作系统 RPM 包：除 CentOS 7.6 Minimal 外的其他必备 RPM。

本分支对应的 Kubernetes 离线包版本是 1.16.4，具体内容及版本信息如下所示。

## 1. Kubenetes 核心组件

|  分类  |  组件名称   | 版本  |
|  ---- |  ----  | ----  |
| 核心 | kubernetes  | 1.16.4 |
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
| 存储 | rook/ceph | v1.1.6 |
| 存储 | ceph/ceph | v14.2.4-20190917 |
| 存储 | quay.io/cephcsi/cephcsi | v1.2.1 |
| 存储 | quay.io/k8scsi/csi-node-driver-registrar | v1.1.0 |
| 存储 | quay.io/k8scsi/csi-provisioner | v1.3.0 |
| 存储 | quay.io/k8scsi/csi-snapshotter | v1.2.0 |
| 存储 | quay.io/k8scsi/csi-attacher | v1.2.0 |
| 监控 | docker.io/grafana/grafana | 6.4.3 |
| 监控 | quay.io/prometheus/alertmanager | v0.15.2 |
| 监控 | quay.io/prometheus/node-exporter | v0.18.0 |
| 监控 | quay.io/prometheus/prometheus| v2.4.3 |
| 监控 | quay.io/prometheus/pushgateway| v0.5.2 |
| 监控 | quay.io/coreos/kube-state-metrics| v1.4.0 |
| 监控 | k8s.gcr.io/metrics-server-amd64| v0.3.6 |
| 监控 | k8s.gcr.io/node-problem-detector| v0.8.0 |
| Dashboard | kubernetesui/dashboard| v2.0.0-beta5 |
| Dashboard | kubernetesui/metrics-scraper| v1.0.1 |
| 工具 | gcr.io/google-containers/pause-amd64| 3.1 |
| 工具 | docker.io/registry| 2 |
| 工具 | docker.io/konradkleine/docker-registry-frontend| v2 |
| 工具 | gcr.io/kubernetes-helm/tiller| v2.16.1 |
| 工具 | quay.io/coreos/configmap-reload| v0.0.1 |
| 工具 | docker.io/appropriate/curl| edge |
| 工具 | weaveworks/scope| 1.11.5 |

## 3. RPM 包（基于 CentOS 7.6 Minimal）

|  分类  |  组件名称  |  依赖  |
|  ---- |  ----   |  ----  |
|  RPM  |  dnsmasq  |  libnetfilter_cttimeout libnetfilter_cthelper libnetfilter_queue  |
|  RPM  |  chrony  |  libseccomp  |
|  RPM  |  nfs-utils  |  gssproxy keyutils libbasicobjects libcollection libevent libini_config libnfsidmap libpath_utils libref_array libtirpc libverto-libevent quota quota-nls rpcbind tcp_wrappers  |
|  RPM  |  ceph-common  |  at avahi-libs bc boost-iostreams boost-program-options boost-random boost-regex boost-system boost-thread cryptsetup cups-client cups-libs ed gdisk hdparm json-c libicu librados2 librbd1 m4 mailx patch psmisc python-backports python-backports-ssl_match_hostname python-chardet python-ipaddress python-rados python-rbd python-requests python-six python-urllib3 redhat-lsb-core redhat-lsb-submod-security spax time cryptsetup-libs  |
|  RPM  |  jq  |  oniguruma  |
|  RPM  |  ipset  |  ipset-libs  |
|  RPM  |  conntrack-tools  |  |
|  RPM  |  ipvsadm  |  |
|  RPM  |  psmisc  |  |
|  RPM  |  socat  |  |
|  RPM  |  bash-completion  |  |
|  RPM  |  haproxy  |  |
|  RPM  |  ntpdate  |  |
|  RPM  |  rsync  |  |

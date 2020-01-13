# Kubernetes 离线安装包

KubeOperator 提供完整的 Kubernetes 离线安装包，每个安装包会被构建成一个独立容器镜像供 KubeOperator 使用，离线安装包中包括以下三种内容：

- 核心组件：包括 Kubenetes、Docker 及 etcd；
- 镜像：包括网络、存储、监控、日志、管理工具及内置应用等的镜像；
- RPM：除 CentOS 7.4+ Minimal 外的其他必备 RPM。

本分支对应的 Kubernetes 离线包版本是 1.15.7，具体内容及版本信息如下所示。

## 1. 核心组件

|  分类  |  组件名称   | 版本  |
|  ---- |  ----  | ----  |
| 核心 | kubernetes  | 1.15.7 |
| 核心 | etcd  | 3.3.10 |
| 核心 | docker  | docker-ce-18.09.9 |

## 2. 镜像列表

离线包中镜像请查看: [requirements/images.txt](requirements/images.txt)

## 3. RPM 列表

离线包中 RPM 请查看: [requirements/rpms.txt](requirements/rpms.txt)

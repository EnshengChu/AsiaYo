# **解題思路**

## K8S Manifest

依照題目要求，我設計了三個 Helm Chart 並將它們部署在我的地端環境，如有後續面試可以展示給各位考官，並subchart 將集成於 Parent Chart 內，以便快速部署。這三個 Helm Chart 如下：

- **asiayo-app**：一個用於演示高可用應用的 NGINX 服務。
- **ingress-nginx**：用於管理 Kubernetes 集群中的流量。
- **mysql**：讀寫分離的 MySQL 集群，包含 1 個 Master 和 2 個 Slave 節點。

## Terraform 
- 我使用官方的 Terraform 模組做一個快速套用，並使用 S3 作為 backend 來確保狀態檔案的一致性。由於沒有實際的 AWS 環境可以測試，因此這些配置沒有實際執行過。我的大多數 Terraform 經驗主要是在 GCP 上使用。

terraform {
  backend "s3" {
    bucket = "mybucket"
    key    = "path/to/my/key"
    region = "us-west-2"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
}

module "eks_self_managed_node_group" {
  source = "./modules/amazon-eks-self-managed-node-group-main"

  eks_cluster_name = "cmluns-eks-cluster"
  instance_type    = "m5.2xlarge"
  desired_capacity = 2
  min_size         = 1
  max_size         = 4
  subnets          = ["subnet-0aeebfca3d1a6da83", "subnet-0e407d26b34566b16"] # Region subnet(s)

  node_labels = {
    "node.kubernetes.io/node-group" = "node-group-a" # (Optional) node-group name label
  }
}
# Variable declaration happens here. Assignment happens in a
# tfvars file.

variable "app_name" {
    description = "Application name used for naming resources"
    type = string
    default = "k8s-aws"
}

variable "k3s-nodes" {
    type = set(string)
    default = ["k3s-node1", "k3s-node2"]
}
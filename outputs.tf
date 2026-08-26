output "vpc_arn" {
    description = "arn of the VPC"
    value       = aws_vpc.vpc-k3s-cluster.arn
}
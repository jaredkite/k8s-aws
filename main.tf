# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"

  default_tags {
    tags = {
        Project = var.app_name
        ManagedBy = "OpenTofu"
    }
  }
}

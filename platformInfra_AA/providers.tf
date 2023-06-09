terraform {
    required_version = "~> 1.4.5"
    required_providers{
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.64.0"
        }
    }
    backend "s3" {
      
    }
}

provider "aws" {
    region = var.aws_region
}

data "terraform_remote_state" "baseinfra" {
    backend = "s3"
    config = {
        bucket      = "${var.remote_state_bucket}"
        key         = "${var.remote_state_key}"
        region      = "${var.aws_region}"
    }
}

variable "region" {
    description = "The AWS region to create resources in."
    default = "ap-southeast-2"
}

# TODO: support multiple availability zones, and default to it.
variable "availability_zone" {
    description = "The availability zone"
    default = "ap-southeast-2a"
}

variable "availability_zone2" {
    description = "The availability zone"
    default = "ap-southeast-2b"
}

variable "ecs_cluster_name" {
    description = "The name of the Amazon ECS cluster."
    default = "main"
}

variable "amis" {
    description = "Which AMI to spawn. Defaults to the AWS ECS optimized images."
    # TODO: support other regions.
    default = {
        ap-southeast-2 = "ami-023dd49682f8a7c2b"
    }
}


variable "autoscale_min" {
    default = "1"
    description = "Minimum autoscale (number of EC2)"
}

variable "autoscale_max" {
    default = "10"
    description = "Maximum autoscale (number of EC2)"
}

variable "autoscale_desired" {
    default = "2"
    description = "Desired autoscale (number of EC2)"
}


variable "instance_type" {
    default = "t2.micro"
}

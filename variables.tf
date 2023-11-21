variable "vpc_cidr" {
  type    = string
  default = "10.20.0.0/24"
}

variable "public_subnet" {
  type    = string
  default = "10.20.0.0/25"
}

variable "private_subnet" {
  type    = string
  default = "10.20.0.128/25"
}

variable "addons" {
  type = list(object({
    name    = string
  }))

  default = [
    {
      name = "vpc-cni"

    },
    {
      name = "coredns"

    },
    {
      name = "aws-ebs-csi-driver"

    }
  ]
}
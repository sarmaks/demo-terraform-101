
variable "ami_id" {
  type = "map"
  default = {
    us-east-1   = "ami-07d0cf3af28718ef8"
    us-east-2   = "ami-05c1fa8df71875112"
    us-west-1   = "ami-08fd8ae3806f09a08"
    us-west-2   = "ami-06f2f779464715dc5"
  }
}

variable "public_key_path" {
  description = "The key name to use for the instance"
  default     = "./userdata/public_key.pub"
}

variable "private_key_path" {
  description = "The path of an SSH key to use for the connection."
  default     = "./userdata/private_key.pem"
}

variable "InstanceUser" {
  default = "testuser"
}

variable "InstancePassword" {
  default = "Testuser@1234"
}

variable "location" {
  description = "Respected location with the region"
  type        = "map"

  default = {
    us-east-1      = "US East (N. Virginia)"
    us-east-2      = "US East (Ohio)"
    us-west-1      = "US West (N. California)"
    us-west-2      = "US West (Oregon)"
    ap-east-1      = "Asia Pacific (Hong Kong)"
    ap-south-1     = "Asia Pacific (Mumbai)"
    ap-northeast-3 = "Asia Pacific (Osaka-Local)"
    ap-northeast-2 = "Asia Pacific (Seoul)"
    ap-southeast-1 = "Asia Pacific (Singapore)"
    ap-southeast-2 = "Asia Pacific (Sydney)"
    ap-northeast-1 = "Asia Pacific (Tokyo)"
    ca-central-1   = "Canada (Central)"
    cn-north-1     = "China (Beijing)"
    cn-northwest-1 = "China (Ningxia)"
    eu-central-1   = "EU (Frankfurt)"
    eu-west-1      = "EU (Ireland)"
    eu-west-2      = "EU (London)"
    eu-west-3      = "EU (Paris)"
    eu-north-1     = "EU (Stockholm)"
    me-south-1     = "Middle East (Bahrain)"
    sa-east-1      = "South America (São Paulo)"
    us-gov-east-1  = "AWS GovCloud (US-East)"
    us-gov-west-1  = "AWS GovCloud (US-West)"
  }
}
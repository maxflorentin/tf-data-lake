variable "region" {
  type        = string
  description = "AWS region where resources are to be deployed to"
}

variable "kms_data_dev" {
  type        = string
  description = "AWS KMS for encrypt secrets, buckets, etc."
}

variable "zone_id" {
  type    = string
  default = ""
}


variable "region_number" {
  default = {
    eu-west-1 = 1
  }
}

variable "az_number" {
  default = {
    a = 1
    b = 2
    c = 3
  }
}

variable "ec2_count" {
  description = "Numbers of EC2 to be deploy"
  type        = number
  default     = 1

  validation {
    condition     = var.ec2_count <= 2 && var.ec2_count >= 1
    error_message = "The amount of EC2s must be valid range 1 - 2."

  }
}

variable "bucket_name" {
  type = string
  default = ""
}

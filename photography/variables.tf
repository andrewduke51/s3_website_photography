
variable "aws_access_key_id" {
  description = "aws access key"
}

variable "aws_secret_key_id" {
  description = "aws secret key"
}

variable "default_region" {
  description = "The region in which to create the bucket"
}

variable "name_prefix" {
  description = "An additional prefix to distinguish the bucket"
  default = ""
}

variable "bucket_name" {
  description = "The name of the bucket. Do not include deployment_type prefixes!"
}

variable "versioning" {
  description = "Whether to enable versioning on the bucket"
  default = false
}

variable "acl" {
  description = "The acl rule for the bucket"
  default = "private"
}

variable "shared_profile" {
  description = "aws profile"
}

variable "profile_name" {
  description = "name of your profile"
}

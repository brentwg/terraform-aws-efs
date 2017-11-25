# -------------
# Module Inputs
# -------------
variable "customer_name" {
  description = "The name of the client. Used for tagging and namespacing."
  default     = ""
}

variable "environment" {
  description = "The programming environment - poc, dev, uat, prod, etc."
  default     = ""
}


variable "vpc_id" {
  description = "The ID of the VPC used to deploy EFS"
  default     = ""
}

variable "subnet_ids" {
  description = "List of VPC subnet IDs used to deploy EFS"
  type        = "list"
  default     = []
}

variable "subnet_count" {
  description = "Number of subnets used to deploy EFS"
  default     = ""
}

variable "security_groups" {
  description = "List of security groups that can access EFS"
  type        = "list"
  default     = []
}

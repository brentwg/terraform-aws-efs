# Terraform AWS Elastic File System (EFS) Module  
This is a Terraform module for AWS that is used to manage EFS.  

## Dependencies  
This module requires a number of input variables listed below.

## Variables  
```
customer_name:   The name of the client. Used for tagging and namespacing.
environment:     The programming environment - poc, dev, uat, prod, etc.
vpc_id:          The ID of the VPC used to deploy EFS
subnet_ids:      List of VPC subnet IDs used to deploy EFS
subnet_count:    Number of subnets used to deploy EFS
security_groups: List of security groups that can access EFS
```

## Example Usage  
```
module "efs" {
  source = "../modules/efs"

  customer_name         = "MY-CUSTOMER_NAME"
  environment           = "MY-ENVIRONMENT"
  vpc_id                = "MY-AWS-VPC-ID"
  subnet_ids            = ["SUBNET-ID-1", "SUBNET-ID-2"]
  subnet_count          = "NUMBER-OF-SUBNET-IDs"
  security_groups       = ["SECURITY-GROUP-ID-1", "SECURITY-GROUP-ID-2]
}
```

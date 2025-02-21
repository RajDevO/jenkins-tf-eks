/* region              = "us-west-1" */
environment         = "test"
/* cluster_name        = "project-eks" */
vpc_cidr_block      = "10.0.0.0/16"
subnet_cidr_private = ["10.0.1.0/24", "10.0.2.0/24"]
subnet_cidr_public  = ["10.0.101.0/24", "10.0.102.0/24"]
subnet_cidr_infra   = ["10.0.104.0/24", "10.0.105.0/24"]

terraform {
  backend "s3" {
    bucket = "tf-project-v55"
    key    = "eks-cluster-project/hello-eks/terraform.tfstate"
    region = "us-west-1"
  }
}


##  dynamodb_table = "terra-state-lock" 

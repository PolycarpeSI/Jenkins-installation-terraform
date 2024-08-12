terraform {
  backend "s3" {
    bucket         = "poly-jenkins-s3"           // Here is the name of the s3 bucket created in AWS
    key            = "jenkins/terraform.tfstate" //Where the state file will be located after the creation of the infrastructure
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "jenkins-log" // Here is the name of dynamoDB created in AWS
  }
}
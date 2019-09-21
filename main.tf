terraform {
  backend "s3" {
    bucket = "empresa-terraform-state"
    key    = "crm-dynamics-env/terraform.state"
    region = "us-east-1"
  }
}
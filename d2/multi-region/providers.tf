terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.20"
    }

  }

}



provider "aws" {
  alias  = "mumbai"
  region = "ap-south-1"
}

provider "aws" {
	alias = "singapore"
	region = "ap-southeast-1"
}


provider "aws" {
  alias = "jakarta"
  region = "ap-southeast-3"
}

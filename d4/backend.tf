
############################################ S3 backend

terraform {
	backend "s3" {
		bucket = "jitu-tfstatefile-bucket" 
		region = "ap-south-1"
		key    = "backend/aws/terraform.tfsate"
		dynamodb_table = "terraform-lock"	#Added parameter for stateLock with help of DynamoDB
	}

}



###########################################  S3 Bucket for backend

module "backend-s3" {
	source = "/Users/jitendra/Downloads/2026/tf/modules/s3"
	bucket-name = "jitu-tfstatefile-bucket"
	region-name = "ap-south-1"
}


########################################### DynamoDB resource which we are going to use StateLocking

resource "aws_dynamodb_table" "terraform-lock" {
	name = "terraform-lock"
	billing_mode = "PAY_PER_REQUEST"
	hash_key = "LockID"
	attribute {
		name = "LockID"
		type = "S"
	}
}



#terraform init -reconfigure  sometimes it require backend to reinitialze from this command
#terraform init -migrate-state


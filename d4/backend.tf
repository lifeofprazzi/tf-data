
############################################ S3 backend

terraform {
	backend "s3" {
		bucket = "jitu-tfstatefile-bucket" 
		region = "ap-south-1"
		key    = "backend/aws/terraform.tfsate"
	}

}



###########################################  S3 Bucket for backend

module "backend-s3" {
	source = "/Users/jitendra/Downloads/2026/tf/modules/s3"
	bucket-name = "jitu-tfstatefile-bucket"
	region-name = "ap-south-1"
}






resource "aws_s3_bucket" "s3" {
	bucket = var.bucket-name
	region = var.region-name

}

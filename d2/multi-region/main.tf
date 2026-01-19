############ EC2

resource "aws_instance" "mumbai" {
	ami = "ami-0ced6a024bb18ff2e"
	instance_type = "t2.micro"
	provider = aws.mumbai
}

resource "aws_instance" "singapore" {
	ami = "ami-01dc51e87421923b6"
	instance_type = "t2.micro"
	provider = aws.singapore
}

resource "aws_instance" "jkt" {
	ami = "ami-02ec9606fb7965410"
	instance_type = "t3.micro"
	provider = aws.jakarta
}

############ S3

resource "aws_s3_bucket" "exm_s3_1" {
	bucket = "jitu-bucket-s3-xyz"
}

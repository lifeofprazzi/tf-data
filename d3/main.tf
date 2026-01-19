module "M1" {       							 ###	Mumbai
	source = "/Users/jitendra/Downloads/2026/tf/modules/ec2"
	AmiID = "ami-0ced6a024bb18ff2e"
	InstanceType = "t2.micro"


	providers = {
		aws = aws.mumbai
	}
}


module "M2" {								#### 	Singapore
	source = "/Users/jitendra/Downloads/2026/tf/modules/ec2"
	AmiID = "ami-01dc51e87421923b6"
	InstanceType = "t2.micro"

	providers =  {
		aws = aws.singapore
		}
}



module "s3" {
	source = "/Users/jitendra/Downloads/2026/tf/modules/s3"
	bucket-name = "from-the-module"

}

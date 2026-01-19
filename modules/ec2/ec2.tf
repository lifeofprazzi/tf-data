resource "aws_instance" "machine" {
	ami = var.AmiID
	instance_type = var.InstanceType

}


#For creating EC2 instance

resource "aws_instance" "Portal_Server" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_pair_name
    security_groups = [var.security_group_name]

    
    tags = {
        Name = "MyTerraformInstance"
    }
  
}

#For creating security group for the instance

resource "aws_security_group" "my-sg" {
  
  name = var.security_group_name
  description = "my security group"
  vpc_id = var.vpc_id

  #for allowing SSH access
  ingress {
    description = "allow ssh"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  #for allowing HTTP access
  ingress {
    description = "allow HTTP"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
  tags = {
    Name = var.security_group_name
  }
}


#For creating S3 bucket

resource "aws_s3_bucket" "mys3_bucket" {
    bucket = var.bucket_name
    
    tags = {
      Name = "mr.aTerraformS3Bucket"
    }
  
}

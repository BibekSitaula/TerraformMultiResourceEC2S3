output "ec2_public_ip" {
  description = "Public IP of the EC2 instance"
  value = aws_instance.Portal_Server.public_ip
}

output "s3_bucket-name" {
  description = "Name of S3 bucket"
  value = aws_s3_bucket.mys3_bucket
}
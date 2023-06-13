
resource "aws_s3_bucket" "new_bucket" {
  bucket = "sly-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "local_file" "name" {
  filename = "${path.module}/file/pet.txt"
  content = var.file-content["statement2"]
}

data "local_file" "name" {
  filename = "${path.module}/file/pet.txt"
}

data "aws_s3_bucket" "new_bucket" {
  bucket = "sly-bucket"
}

resource "aws_s3_object" "object" {
  bucket = data.aws_s3_bucket.new_bucket.bucket
  key    = "new_object_key"
  source = "data.local_file.name.filename"
}
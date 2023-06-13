resource "local_file" "name" {
  filename = "${path.module}/dummyFile.txt"
  content  = "This is the content of the file to be uploaded to s3"
}



resource "aws_s3_bucket" "s3-bucket-2" {
  bucket = "file-s3-bucket-2"
}


resource "aws_s3_object" "file-object" {
  bucket = aws_s3_bucket.s3-bucket-2.bucket
  key    = "file-object.txt"
  source = local_file.name.filename

  depends_on = [ local_file.name ]
}

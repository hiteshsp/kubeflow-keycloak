terraform {
    backend "s3" {
        bucket = "086994277038"
        key    = "eks"
        region = "ap-south-1"
        dynamodb_table = "my-lock-table"
    }
}
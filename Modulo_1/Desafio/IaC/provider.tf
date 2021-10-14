
provider "aws"{
    region = var.aws_region
}

/*

#provider  
terraform{
    backend "s3" {
     bucket = "terraform-diegoassis-logs"
     key = "state/igti/edc/mod1/terraform.tfstate"
     region = "us-east-2"

    }
}
*/
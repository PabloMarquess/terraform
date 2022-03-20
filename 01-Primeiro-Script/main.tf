#lockando a versão
terraform {
    required_version = "0.14.4"
    
    required_providers {
        aws = {
          source  = "hashicorp/aws"
          version = "4.6.0" 
        }
    }
}

provider "aws" {
  region = "us-east-2" #obrigatorio
  profile = "tf014"
}

resource "aws_s3_bucket" "meu-bucket-teste"  {
  bucket = "s3-bucket-terrafom"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby   = "Terraform"

    }

  }
  
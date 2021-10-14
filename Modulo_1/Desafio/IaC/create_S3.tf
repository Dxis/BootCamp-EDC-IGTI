
#criar o data lake com bucket s3 na AWS
resource "aws_s3_bucket" "datalake" {
  #Parametros de configurações de recurso do s3 AWS
  bucket = "${var.Name_s3}-${var.Nm_Projeto}-${var.Nm_CentroCusto_tf}-${var.Nm_CentroCusto_s3}"
  acl    = "private"

  #tipo de criptografia
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    CURSO   = "IGTI"
    DESAFIO = "EDC"
  }
}
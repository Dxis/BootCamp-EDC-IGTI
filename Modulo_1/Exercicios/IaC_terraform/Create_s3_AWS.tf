#HCL - Hashcorp configuratiuon  language 
#Linguagem declarativa 

resource "aws_s3_bucket" "datalake" {
  #Parametros de configurações de recurso do s3 AWS
  bucket = "${var.Name_s3}-${var.Nm_Projeto}-${var.Nm_CentroCusto_tf}"
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
    CURSO = "IGTI"
  }
}

/*
#subir um obejto no S3 que estamos criando acima 
resource "aws_s3_bucket_object" "codigo_import_csv_com_Spark" {
  bucket = aws_s3_bucket.datalake.id               #o atributo id informa que vamos usar o bucket acima
  key    = "emr-code/pyspark/job_spark_from_tf.py" # local dentro do s3 onde sera postado o arq/nome do arquivo 
  acl    = "private"
  source = "../s3_Codigos/Import_csv_S3.py"          #origem 
  etag   = filemd5("../s3_Codigos/Import_csv_S3.py") # recurso par validar se precisa atualizar o  arquivo


}
*/

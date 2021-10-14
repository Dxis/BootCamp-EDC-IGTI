
#subir um arquivo no S3 que estamos criando acima 
resource "aws_s3_bucket_object" "codigo_import_csv_com_Spark" {
  bucket = aws_s3_bucket.datalake.id                #o atributo id informa que vamos usar o bucket acima
  key    = "emr-code/pyspark/job_spark_from_tf2.py" # local dentro do s3 onde sera postado o arq/nome do arquivo 
  acl    = "private"
  source = "../s3_Codigos/Import_csv_S3.py"          #origem 
  etag   = filemd5("../s3_Codigos/Import_csv_S3.py") # recurso par validar se precisa atualizar o  arquivo

}

#subir um arquivo no S3 que estamos criando acima 
resource "aws_s3_bucket_object" "codigo_export_csv_com_Spark" {
  bucket = aws_s3_bucket.datalake.id                #o atributo id informa que vamos usar o bucket acima
  key    = "emr-code/pyspark/job_spark_from_tf2.py" # local dentro do s3 onde sera postado o arq/nome do arquivo 
  acl    = "private"
  source = "../s3_Codigos/Export_csv_S3.py"          #origem 
  etag   = filemd5("../s3_Codigos/Export_csv_S3.py") # recurso par validar se precisa atualizar o  arquivo

}

/*
#subir um obejto no S3 que estamos criando acima 
resource "aws_s3_bucket_object" "insert__delta_lake" {
  bucket = aws_s3_bucket.datalake.id                #o atributo id informa que vamos usar o bucket acima
  key    = "emr-code/pyspark/job_spark_from_tf2.py" # local dentro do s3 onde sera postado o arq/nome do arquivo 
  acl    = "private"
  source = "../s3_Codigos/Import_deltalake_S3.py"          #origem 
  etag   = filemd5("../s3_Codigos/Import_deltalake_S3.py") # recurso par validar se precisa atualizar o  arquivo

}
*/
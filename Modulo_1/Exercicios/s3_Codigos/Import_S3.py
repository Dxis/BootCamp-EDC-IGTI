import boto3
import pandas as pd

# criar um cliente para integragir com S3
s3_client = boto3.client('s3')

#importar CSV
#s3_client.upload_file('teste.csv','datalake-diegoassis-572649678619','raw-data/teste2.csv')          
s3_client.upload_file('MICRODADOS_ENEM_2019.csv','datalake-diegoassis-572649678619','raw-data/MICRODADOS_ENEM_2019.csv') 
              
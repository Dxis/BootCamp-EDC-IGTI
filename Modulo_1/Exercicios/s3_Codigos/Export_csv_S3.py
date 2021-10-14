import boto3
import pandas as pd

#criar um cliente para interagir com o AWS S3 
s3_client = boto3.client('s3')

#Download de arquivo do Data lake 
s3_client.download_file("datalake-diegoassis-572649678619",
                        "teste.csv",
                        "teste.csv")


df = pd.read_csv("teste.csv",sep=";")
print(df)
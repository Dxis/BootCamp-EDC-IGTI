import boto3
import pandas as pd

# criar um cliente para integragir com S3
s3_client = boto3.client('s3')

print('Start program')

#importar CSV
#matricula_sul          
#s3_client.upload_file('matricula_sul.csv','datalake-dxis-terraform-s3','raw-data/enem/year=2020/matricula_sul.csv') 

#matricula_nordeste
#s3_client.upload_file('matricula_nordeste.csv','datalake-dxis-terraform-s3','raw-data/enem/year=2020/matricula_nordeste.csv') 

#matricula_norte
#s3_client.upload_file('matricula_norte.csv','datalake-dxis-terraform-s3','raw-data/enem/year=2020/matricula_norte.csv') 

#matricula_sudeste
#s3_client.upload_file('matricula_sudeste.csv','datalake-dxis-terraform-s3','raw-data/enem/year=2020/matricula_sudeste.csv') 

#df = pd.read_csv('matricula_sudeste.csv')

#print(df.to_string())

#matricula_co
#s3_client.upload_file('matricula_co.csv','datalake-dxis-terraform-s3','raw-data/enem/year=2020/matricula_co.csv') 



              
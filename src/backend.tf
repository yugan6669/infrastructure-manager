terraform{

backend "s3"{

access_key = ""

secret_key = ""

region = "us-east-1"

bucket = "<mybucket>"

key = "<myfile>"

dynamodb_table = "<mytable>"

}

}

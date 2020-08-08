#########################################  AWS provider #################################
provider "aws"{
region = "${var.myregion}"
shared_credentials_file = "/home/centos/.aws/credentials"
#profile                 = "customprofile"
#access_key = "${var.myaccesskey}"
#secret_key = "${var.mysecretkey}"
}




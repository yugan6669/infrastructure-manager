#########################################  Importing  modules #################################
module "instances"{
source = "./modules/instances"
#myregion = "${var.myregion}"
#myaccesskey = "${var.myaccesskey}"
#mysecretkey = "${var.mysecretkey}"
myamiid = "${var.myamiid}"
}



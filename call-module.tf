module "network" {
    
  source = "./modules"

   vpc_vlue = var.vpc_vlue_root
   public-1_value = var.public-1_value_root
   public-2_value = var.public-2_value_root
   privat-1_value = var.privat-1_value_root
   privat-2_value = var.privat-2_value_root
   rout_1 = var.rout_1_root
   rout_2 = var.rout_2_root


}

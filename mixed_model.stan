generated quantities {
   real mu_1 = normal_rng(0.75,0.02);
   real sigma_1 = normal_rng(0.02,0.01);

   real mu_2 = normal_rng(0.53,0.1);
   real sigma_2 = normal_rng(0.1,0.01);

   real life_exp;
   real p = bernoulli_rng(0.4);
   
   if(p==1){
      life_exp=normal_rng(mu_1,sigma_1);
   }else{
      life_exp=normal_rng(mu_2,sigma_2);
   }
}

generated quantities {
   real alpha = normal_rng(9,2);
   real beta = normal_rng(0.07,0.02);
   real life_exp = gamma_rng(alpha,1/beta);
}
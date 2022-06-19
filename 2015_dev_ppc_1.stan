generated quantities {
   real mu = normal_rng(0.6,0.2);
   real sigma = normal_rng(0.15,0.05);
   real life_exp = normal_rng(mu,sigma);
}
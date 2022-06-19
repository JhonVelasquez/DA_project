data{
    int N;
    real<lower=0,upper=1> life_exps[N];
}

parameters{
    real mu;
    real sigma;
}

model{
    mu ~ normal(0.6,0.2);
    sigma ~ normal(0.15,0.05);
    life_exps ~ normal(mu,sigma);
}

generated quantities {
   vector [N] log_lik;
   array [N] real life_exp_generated;
   
   for (j in 1:N) {
        log_lik[j] = normal_lpdf(life_exps[j] | mu, sigma);
        life_exp_generated[j] = normal_rng(mu,sigma);
   }

   real<lower=0,upper=1> life_exp_generated_v2 = normal_rng(mu,sigma);
}
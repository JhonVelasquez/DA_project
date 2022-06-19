data{
    int N;
    real<lower=0,upper=1> life_exps[N];
}

parameters{
    real alpha;
    real<lower=0> beta;
}

model{
    alpha ~ normal(9,2);
    beta ~ normal(0.07,0.02);
    life_exps ~ gamma(alpha,1/beta);
}

generated quantities {
   vector [N] log_lik;
   array [N] real life_exp_generated;
   
   for (j in 1:N) {
        log_lik[j] = gamma_lpdf(life_exps[j] | alpha, 1/beta);
        life_exp_generated[j] = gamma_rng(alpha,1/beta);
   }
   
   real life_exp_generated_v2 =  gamma_rng(alpha,1/beta);
}

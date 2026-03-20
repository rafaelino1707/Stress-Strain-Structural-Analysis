function strain_stress(E, v, eps_xx, eps_yy, eps_zz)

multiplier = E / ((1+v)*(1-2*v));

sigma_xx = multiplier * ((1-v)*eps_xx + v*(eps_yy+eps_zz));
sigma_yy = multiplier * ((1-v)*eps_yy + v*(eps_xx+eps_zz));
sigma_zz = multiplier * ((1-v)*eps_zz + v*(eps_yy+eps_xx));

end
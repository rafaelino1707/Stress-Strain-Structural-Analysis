function stress_strain(E, v, sigma_xx, sigma_yy, sigma_zz)

multiplier = 1 / E;

eps_xx = multiplier * (sigma_xx - v*(sigma_yy+sigma_zz));
eps_yy = multiplier * (sigma_yy - v*(sigma_xx+sigma_zz));
eps_zz = multiplier * (sigma_zz - v*(sigma_yy+sigma_xx));

end
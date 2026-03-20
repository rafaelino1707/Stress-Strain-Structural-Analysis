function [prop_1, prop_2, prop_3, radius] = mohr_circle(prop_xx, prop_yy, prop_xy)

    % Plane stress: sigma_zz = 0

    prop_mid = (prop_xx + prop_yy)/2;
    A = (prop_xx - prop_yy)/2;

    radius = sqrt(A^2 + prop_xy^2);

    s1 = prop_mid + radius;
    s2 = prop_mid - radius;
    s3 = 0;

    % ordenar por ordem decrescente
    props = sort([s1, s2, s3], 'descend');

    prop_1 = props(1);
    prop_2 = props(2);
    prop_3 = props(3);

end
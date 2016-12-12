function [dcf_vector, kw] = GetDensityCompensation(acquisition, densitycomptype, gradstruct, kmapstruct)

[gradx grady gradz] = UnpackStructureInto3Vectors(gradstruct);
[kx ky kz] = UnpackStructureInto3Vectors(kmapstruct);
kw = kx.^2 + ky.^2 + kz.^2;

switch(densitycomptype)
    
    case 0 % for 2D planar imaging
        Gt = sqrt(gradx.^2 + grady.^2 + gradz.^2);
        G_max = max(abs(Gt));
        dcf_vector = kw.* (Gt/G_max);
    
    case 1 % voronoi
        dcf_vector = vorDCF(kx, ky);

    case 2 % dcf_allones
        dcf_vector = ones(length(gradx),1);
        
    case 3 % external dcf
        load(strcat(gradbasepath,'kdef.mat'));
        [dcf_vector, ~] = icone_pseudodensity(traj, gradx, grady, dt);

    case 4 % Mostly 1/r^2 scaled by instantaneous gradient; the slew locations density = 1
        Gt = sqrt(gradx.^2 + grady.^2 + gradz.^2);
        G_max = max(abs(Gt));
        dcf_vector = kw.* (Gt/G_max);
        dcf_vector(acquisition.slewinglocs) = 1;

    case 5 % 1/r^2 scaled by instantaneous gradient G(t) for all points
        Gt = sqrt(gradx.^2 + grady.^2 + gradz.^2);
        G_max = max(abs(Gt));
        dcf_vector = kw.* (Gt/G_max);
        
    case 6 % 1/r^2 scaled by instantaneous gradient but halved for radial trajectories where inbound echo overlaps outbound.
        Gt = sqrt(gradx.^2 + grady.^2 + gradz.^2);
        G_max = max(abs(Gt));
        dcf_vector = kw.* (Gt/G_max);
        dcf_vector = dcf_vector/2;
end

end % eof

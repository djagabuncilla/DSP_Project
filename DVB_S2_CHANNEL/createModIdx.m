function modIdx = createModIdx(N, modulationType)
    % modulationType: 0 = QPSK, 1 = 8-PSK, 4 = pi/2-BPSK
    modIdx = fi(modulationType * ones(N, 1), 0, 8, 0);
end
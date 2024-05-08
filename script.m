mpc = case_ACTIVSg2000;
ng_indices = find(strcmp(mpc.genfuel, 'ng'));

% Calculate the number of generators to turn off
num_to_turn_off = round(length(ng_indices) * 0.5); 

% Randomly select indices of generators to turn off
turn_off_indices = ng_indices(randperm(length(ng_indices), num_to_turn_off));

% Set status of selected generators to 0 (offline)
mpc.gen(turn_off_indices, 8) = 0;

savecase('my_new_texas_case.m', mpc);
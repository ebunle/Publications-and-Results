%% =========================================================================
% Q-PSO-LQR-PID: Quantum Particle Swarm Optimization for LQR-PID Controller
% Load Frequency Control in Isolated Power Systems
% =========================================================================
% Copyright (c) 2023 Notice & License Information
% All rights reserved. Please read the "license.txt" for license terms.
% 
% This MATLAB code implements the Quantum Particle Swarm Optimization (Q-PSO)
% algorithm for tuning LQR-PID controllers in Load Frequency Control (LFC)
% applications for isolated power systems.
%
% Based on research published in:
% Rene, E.A., & Fokui, W.S.T. (2023). A quantum particle swarm optimization-
% based optimal LQR-PID controller for load frequency control of an isolated 
% power system. Journal of Engineering and Applied Science, 70(97).
% https://doi.org/10.1186/s44147-023-00271-z

% Contact for inquiries: ebunleakupanrene@gmail.com 
% and please cite this work using the above citation.
%% =========================================================================
clc; clear; close all;
fprintf('==========================================================\n');
fprintf('Q-PSO-LQR-PID: Quantum PSO for LFC Controller Optimization\n');
fprintf('==========================================================\n\n');

%% ===================== MAIN OPTIMIZATION ROUTINE ========================

clear; clc;

%% Main Optimization

    fprintf('Q-PSO LQR-PID Tuning\n');
    fprintf('----------------------\n');
    
    % Problem setup
    D = 3;                      % PID gains: [Kp, Ki, Kd]
    nPop = 20;                  % Swarm size
    lb = [1, 1, 1];            % Lower bounds
    ub = [1000, 1000, 1000];   % Upper bounds
    maxit = 100;                % Max iterations
    
    % Run Q-PSO optimization
    [optimal_gains, best_cost, history] = QPSO_optimizer(@cost_function, D, nPop, lb, ub, maxit);
    
    % Display results
    fprintf('\nOptimization Complete\n');
    fprintf('Optimal Gains:\n');
    fprintf('  Kp = %.4f\n', optimal_gains(1));
    fprintf('  Ki = %.4f\n', optimal_gains(2));
    fprintf('  Kd = %.4f\n', optimal_gains(3));
    fprintf('Best Cost = %.6e\n', best_cost);
    

%% Results Plotting
    figure;
    
    % Convergence plot
    subplot(1, 2, 1);
    semilogy(history.cost, 'b-', 'LineWidth', 2);
    xlabel('Iteration');
    ylabel('Best Cost (log scale)');
    title('Convergence History');
    grid on;
    
    % Parameters plot
    subplot(1, 2, 2);
    plot(history.gbest(:, 1), 'r-', 'LineWidth', 1.5); hold on;
    plot(history.gbest(:, 2), 'g-', 'LineWidth', 1.5);
    plot(history.gbest(:, 3), 'b-', 'LineWidth', 1.5); hold off;
    xlabel('Iteration');
    ylabel('Parameter Value');
    title('Parameter Evolution');
    legend('Kp', 'Ki', 'Kd', 'Location', 'best');
    grid on;
    

%% Cost Function for LQR-PID Tuning
function J = cost_function(xpid)
    % System parameters
    H = 5;      % Generator inertia
    D = 0.8;    % Load damping
    R = 0.05;   % Speed regulation
    
    % Assign gains for simulation
    assignin('base', 'xpid', xpid);
    
    try
        % Simulate system (adjust model name as needed)
        sim('PSO_tunning_PID.slx');
        
        % Extract data
        u = CONTROL_INPUT_u; % control input to the plant
        y = CONTROL_INPUT_y; % control output from the plant. that is my state vector
        
        % LQR cost calculation
        Q = 50;         % State weight
        R_weight = 1e-5;% Control weight
        ref = 0;        % Reference
        
        % Calculate cost
        dt = 20/length(y); % time step on a scal of 20
        state_error = ref - y;
        J = dt * sum(Q * state_error.^2 + R_weight * u.^2);
        
    catch
        % Return high cost if simulation fails
        J = 1e10;
    end
end

%% Quantum PSO Optimizer
function [gbest, f_gbest, history] = QPSO_optimizer(fun, D, nPop, lb, ub, maxit)
    
    % Initialize particles
    particles = lb + (ub - lb) .* rand(nPop, D);
    pbest = particles;
    
    % Evaluate initial population
    f_pbest = zeros(nPop, 1);
    for i = 1:nPop
        f_pbest(i) = fun(particles(i, :));
    end
    
    % Find global best
    [f_gbest, idx] = min(f_pbest);
    gbest = pbest(idx, :);
    
    % Store history
    history.cost = zeros(maxit, 1);
    history.cost(1) = f_gbest;
    history.gbest = zeros(maxit, D);
    history.gbest(1, :) = gbest;
    
    % Display Itertion Information
 disp(['Iteration ' num2str(1) ': Best Cost = ' num2str(f_gbest)]);
    % fprintf('Iteration %3d: Cost = %.6e\n', 1, f_gbest);
    
    % Main optimization loop
    for it = 2:maxit
        % Adaptive parameter
        w = 1.0 - 0.5 * (it/maxit);
        
        % Mean best position
        mbest = mean(pbest);
        
        % Update each particle
        for i = 1:nPop
            % Random parameters
            phi = rand(1, D);
            p = (1.5 * phi .* pbest(i, :) + 1.5 * (1-phi) .* gbest) / 3;
            
            % Quantum behavior
            u = rand(1, D);
            L = w * abs(particles(i, :) - mbest);
            
            if rand < 0.5
                particles(i, :) = p + L .* log(1./u);
            else
                particles(i, :) = p - L .* log(1./u);
            end
            
            % Apply bounds
            particles(i, :) = min(max(particles(i, :), lb), ub);
            
            % Evaluate and update
            f_current = fun(particles(i, :));
            
            if f_current < f_pbest(i)
                pbest(i, :) = particles(i, :);
                f_pbest(i) = f_current;
                
                if f_current < f_gbest
                    gbest = particles(i, :);
                    f_gbest = f_current;
                end
            end
        end
        
        % Store history
        history.cost(it) = f_gbest;
        history.gbest(it, :) = gbest;
        
        disp(['Iteration ' num2str(it) ': Best Cost = ' num2str(f_gbest)]);
 
        % Display progress every 10 iterations
%         if mod(it, 10) == 0
%             fprintf('Iteration %3d: Cost = %.6e\n', it, f_gbest);
%         end
    end
end


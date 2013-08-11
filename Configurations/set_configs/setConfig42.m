function[CONFIG]=setConfig42(CONFIG)

% CONFIGURATION DESCRIPTION==============================================
% This configuration is for a diverge junction with one incoming link (6 lanes) and two
% outing links ( 5 and 2 lanes seperately)
% Initial state is free flow density for all three links
% Boundary condition is free flow density for link 1, 2 and 3
% Diverge ratio = 0.5
% This is a lane-scale model 
% Error mean and var are both 0
% END====================================================================

% congfigID
CONFIG.configID = 42;

% use measurement generated by config XXX
CONFIG.measConfigID = 0;

% measurement generation network
CONFIG.measNetworkID = 'CA-network-0';

% model calibration network
CONFIG.caliNetworkID = 'CA-network-3';

% parameters
CONFIG.parameterID = 42;

% initial state
CONFIG.initialStateID = 'INITIAL_STATE_CONFIG-42';

% boundary condition
CONFIG.boundaryConditionID = 'BOUNDARY_CONDITION_CONFIG-42';

% junction solver
CONFIG.junctionSolverType = 'multi-lane model';

% running mode
CONFIG.measurement_generation_mode = 'off';
CONFIG.estimation_mode = 'off';
CONFIG.particle = 'off';
CONFIG.ABC = 'on';
CONFIG.ABCrejection = 'off';
CONFIG.ABCSMC = 'on';

% data folder (this is the data generated by config xx)
CONFIG.sensorDataFolder = (['.\Result\testingData\config-' num2str(CONFIG.measConfigID) '\']);

% save testing(1st, last cell) data to the following folder
% check if the data folder already exist
if (exist (['.\Result\testingData\config-' num2str(CONFIG.configID)], 'dir') ~= 7)
    mkdir (['.\Result\testingData\config-' num2str(CONFIG.configID)]);
end
CONFIG.testingDataFolder = (['.\Result\testingData\config-' num2str(CONFIG.configID) '\']);

% save density evolution related info. to the following folder (LINK,
% LINK_WITH_SENSOR)
if (exist (['.\Result\evolutionData\config-' num2str(CONFIG.configID)], 'dir') ~= 7)
    mkdir (['.\Result\evolutionData\config-' num2str(CONFIG.configID)]);
end
CONFIG.evolutionDataFolder = (['.\Result\evolutionData\config-' num2str(CONFIG.configID) '\']);


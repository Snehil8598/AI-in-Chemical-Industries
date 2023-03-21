function [y1] = myNeuralNetworkFunction4(x1)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Auto-generated by MATLAB, 22-Jan-2023 21:19:01.
%
% [y1] = myNeuralNetworkFunction(x1) takes these arguments:
%   x = 8xQ matrix, input #1
% and returns:
%   y = 1xQ matrix, output #1
% where Q is the number of samples.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [133;8139;4472;370;1.46;385;551;421062];
x1_step1.gain = [0.0526315789473684;0.000641848523748395;0.00053134962805526;0.0714285714285714;1.06382978723404;0.0571428571428571;0.0487804878048781;5.05183179420858e-06];
x1_step1.ymin = -1;

% Layer 1
b1 = [-6.8774590707278182578;2.21363836255141333;0.16220570712548959547;-0.7259000688524246403;-0.14061494950064212794;-0.2271682918084723668;-0.010324352325456642721;-2.0747455120221562908;1.4772993621886996163;1.3448225231539481239];
IW1_1 = [1.4427023217648602404 -1.8201074434113817535 4.0895947248860498036 3.8103597744188602015 2.5584439673506578217 2.9572604348869897528 2.1323899633626357542 1.7826934837587784521;-1.5990214030801581657 0.18744042043133363196 -0.48603552722216597504 -1.195718206593019195 2.2257807712452497562 1.350199980003089717 -0.85946387869540941118 -0.88816194972373652128;1.5514570141088108723 0.58097164988832961097 -1.026060835602294885 0.95471370285102119535 0.44353465119986590359 -2.2202129624503430527 0.473968341906002677 1.5520548388071060408;2.6712473801763669812 -0.27197718681428612042 -0.0057178117557208016364 0.22007458787611697271 -1.6832566368515931021 -0.63005046508345530221 -2.5140176467017782969 0.84287355140964559386;0.26543801518582155197 -1.3718960545191309919 1.2615885846716590191 -1.720317999139244991 -3.5721486151003887244 -2.2034057686703625301 1.6007167730087807911 -1.4510285820485901986;1.8076470936578470372 2.0935743633981553913 1.9966193028934811071 -1.1245158191209292387 -3.8538256389280540759 -0.83843218762303395319 -1.4498545869294137134 -3.7959880529030929353;-2.5824256326870713707 1.1578242192169785341 0.014771648534654666096 -0.67040162732286601166 -1.8080383833128372828 0.059707153285899608464 0.21878510369814366254 -2.2181220471607221434;-1.8483944681688877498 1.3836148014124125538 -0.87515714422233104042 -0.35753974500635438138 -2.6200453565098493769 3.7969432780295222507 -1.8480290845454643289 2.31978353791980485;2.3299873583430832369 -1.3025831664272580213 0.46330871928820593908 0.34231015321720853484 -2.1762679505612578801 -0.58354975511932061227 4.8071483498895668518 -2.0978498155715907814;1.724639979801992018 -0.21331257367579675721 0.4176868705173661378 0.62930053035535760131 0.12921486283632593883 0.32585190225825266808 -0.52395977040357211152 0.7425103896485217847];

% Layer 2
b2 = -0.1001985171867387503;
LW2_1 = [-0.50781537578101765273 -0.81269390785437234381 -0.21219631744031150489 -0.24751807940102418804 -0.13273888042189105341 0.13340689161714908151 -0.23642918730667450422 -0.14939350519225680358 0.068543317104030845877 0.50618943258887394432];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.0476190476190476;
y1_step1.xoffset = 485;

% ===== SIMULATION ========

% Dimensions
Q = size(x1,2); % samples

% Input 1
xp1 = mapminmax_apply(x1,x1_step1);

% Layer 1
a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*xp1);

% Layer 2
a2 = repmat(b2,1,Q) + LW2_1*a1;

% Output 1
y1 = mapminmax_reverse(a2,y1_step1);
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings)
y = bsxfun(@minus,x,settings.xoffset);
y = bsxfun(@times,y,settings.gain);
y = bsxfun(@plus,y,settings.ymin);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n,~)
a = 2 ./ (1 + exp(-2*n)) - 1;
end

% Map Minimum and Maximum Output Reverse-Processing Function
function x = mapminmax_reverse(y,settings)
x = bsxfun(@minus,y,settings.ymin);
x = bsxfun(@rdivide,x,settings.gain);
x = bsxfun(@plus,x,settings.xoffset);
end

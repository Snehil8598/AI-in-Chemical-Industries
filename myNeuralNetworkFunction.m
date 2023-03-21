function [y1] = myNeuralNetworkFunction(x1)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Auto-generated by MATLAB, 22-Jan-2023 19:15:12.
%
% [y1] = myNeuralNetworkFunction(x1) takes these arguments:
%   x = 3xQ matrix, input #1
% and returns:
%   y = 1xQ matrix, output #1
% where Q is the number of samples.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [100;1;10];
x1_step1.gain = [0.025;1;0.04];
x1_step1.ymin = -1;

% Layer 1
b1 = [-4.4672030566406890628;-4.2119277052555297303;-3.8628154610689664494;3.6134729730397405767;-3.325313426045575671;-3.2689679668134097312;2.8942737425987186128;-2.5339226359388096199;2.0512208967891618627;1.8934966805779795962;-1.6072333454185738777;-1.3953457363571712957;-0.9833198458367071737;0.68338411214301530983;-0.33377776856998969679;0.1559121921089725582;-0.13467810733536111911;-0.52959456711855079636;-0.71105754881258376177;0.98414848307968527674;-1.1082563685898962902;1.4284331604361992785;-1.7889590289318340055;2.071087728105538428;-2.5226324421614982896;2.8265896845145386251;3.0546291485450214331;3.3086318579158189301;-3.3293776582249003937;-3.897719686684318674;-4.1223761652848933679;4.4548268900460037401];
IW1_1 = [0.86046441461618516922 -3.4845525865489150874 -2.5873856781026858265;0.43179748760564851118 2.8063854262287497576 -3.3561316856136285125;3.5364453348860589443 0.32597999856277876107 -2.6758871562157451329;-1.5640342834741995937 3.6748610724827162066 -1.9110917594305349976;2.278522561919071876 -3.7326441462514359237 -0.7242429595552390964;2.085268835872674309 -0.48595310379190986838 -3.5093102964707640901;-0.81917491103169837174 -3.0001989874555299309 3.0821951942711911521;0.5309816221074320497 2.9737716176394921597 3.1451119446822719539;-2.8799995272272971292 -3.4460127700843408149 -0.26526236954149023939;-3.7085972539959231042 2.4100000276474280447 -0.097967220127437165678;0.18271195977710591452 3.7162972978032340343 -2.3526353300364988286;2.0796619340097319828 2.8616108293921134198 2.6212649371866674208;3.3702192280848741746 -2.843258343481996242 -0.688466787129966451;-3.0437499347433787378 -0.76561818733633779654 -3.0591299114166226047;0.8359750633708750156 -2.7994845165591439873 3.3548049462732265624;-0.41577129558123709918 4.1507497435242557415 -1.5300651982538431284;-3.8752913920783300661 -0.5328185928374160607 -2.0801404573469928216;-1.5382889722721109216 4.0124488319331135244 -0.99795622587958832117;-2.4383654945217743126 -2.3011925053862434254 -2.9143452680928509935;2.45789924926051917 -2.0162839420539824253 -3.0849819710117727389;-1.5072326335100905137 -2.4740202882524462424 3.3133431862678976998;0.28194134393128872373 -2.6618537521050393835 3.470987982569539998;-3.0327540350163606497 3.1893080396307835755 0.51284443913620503253;0.93472383796400870803 0.70270935949321855496 -4.3431008867301041931;-2.9151124003359250025 0.53604319175785397622 -3.2205168268115187402;1.6863389017594538899 -3.7390700675464785263 -1.5341221662089405964;1.6254006011855057778 3.0514660327401275097 2.7106922464433931275;1.7811191697266473 1.0047658990386392208 -3.9238981547129192506;-0.25232055041361023395 -1.3245805531571399616 -4.309030350046608504;-3.4640194464327054291 0.11393086658690382285 -2.7325183128318628611;-3.7253213394872242148 -1.3395767324483283112 2.0929811621404463828;2.9138188698742224503 -2.9368847135126925352 1.5994627532913769929];

% Layer 2
b2 = -0.42886153019200390357;
LW2_1 = [-0.011248385748318247279 -0.12692551318668829352 -0.18025180926458414521 -0.19788554307150549305 0.29751461997793804404 -0.29674116698510361045 0.12796533143905602925 -0.045338356632488287234 -0.17736647584954107204 0.29671715728010406021 0.34171019786016709752 -0.11070352349668791114 0.38716704175987171066 -0.11447812871326379369 0.31054243595734698502 0.2148375820165235317 -0.18663381572920922924 -0.050603718002654146657 -0.072243486978197130055 -0.065867051387055092215 0.50765654893714962093 0.26944690830429723905 0.19659300504035051582 0.10449766469718557715 0.23450290649817875921 0.061675774362757437852 0.24576895802754145093 0.65247608565499448652 0.14168463745066739445 -0.29452607327298319095 0.22906844284788116517 0.24381843333813957297];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = 0.02255299954894;
y1_step1.xoffset = 5.9;

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

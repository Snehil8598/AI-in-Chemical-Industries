function [y1] = myNeuralNetworkFunction3(x1)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Auto-generated by MATLAB, 22-Jan-2023 20:55:06.
%
% [y1] = myNeuralNetworkFunction(x1) takes these arguments:
%   x = 14xQ matrix, input #1
% and returns:
%   y = 3xQ matrix, output #1
% where Q is the number of samples.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [0;0;0;0;0;0;0;0;-1;-1;0.026;0;0.00877358;0];
x1_step1.gain = [2;2;2;2;2;2;2;2;1;1;2.0639834881321;2.25225225225225;2.06688134536448;2.13089899432222];
x1_step1.ymin = -1;

% Layer 1
b1 = [-1.9051880323893295444;-0.91052919599568105102;0.97000129185598571446;-0.4353313480557068349;0.6265739215279421126;0.0050869521631754545388;0.6691010053114552214;1.2835754484379591212;1.3248886639579702251;1.2542137084643603107];
IW1_1 = [0.64814275439275126356 -1.0537998213538863901 -0.96133488561797530991 0.65934178287136269159 0.77229789866834452905 0.71560768130730012526 0.67050853338707216977 1.3541403307086479213 2.8136875353893131546 1.0369003272360368673 0.60058963524014896684 -0.11893341658757139445 -1.3022767651838138558 -0.50728053271865747309;-0.40443860141176168899 -1.3492837827850565624 1.6541218761070459742 0.15135580251094693516 -1.3443647280129307209 -1.340273991412082033 0.016762868802750175573 -0.41344753458459992945 -0.31497681860792847708 -0.082260906209210782336 -0.5685561244194936581 0.3285030068676878523 -0.44810674721221466221 1.6962211436484544436;-0.9464514995251158691 -0.43687053526644287205 0.23198467287514662472 -0.46543727551613495175 -0.95976896697163960326 -0.74954840009808665346 1.8426595662186355806 0.18475677207307525385 0.11662508918896785648 0.48587983508301740843 -1.0395660710881753364 0.55450725179923954222 0.72775641219872833076 -3.1208753583409598598;-0.10741043146168775813 -0.082165634915602539512 -0.13796371936536658276 -0.043565666571983172051 -0.30439275957463945987 -0.24147191529691658385 -0.058969821422846707692 -0.062256548660645082138 0.47516004625009111706 0.22741085475668501581 -0.22829840655290950524 -0.54640159152442513424 -0.0043396346922050400147 0.061856972555246636514;-0.81376156901525742438 -1.3803233185486336598 0.99378929743344524006 -0.38937825746147880501 0.18041277368355312927 -0.82451285979691724126 -0.65646635845506773332 3.3320335276449397632 -0.71986511194312341466 -0.92542026349554651343 -1.6085250971771869466 0.38012715815664421815 0.21468215611677554655 -0.41539516515144814246;0.28739092374270286401 -0.19178730965573789757 -0.3296774360681080096 0.33261240496274424583 0.46484661108280533881 0.19763066640526999462 0.21996671892075536636 -0.75324988913665857915 2.4948853935696599926 0.47718026543221431224 0.79594579640129270448 -0.093805325512395537624 -0.010561677061795858579 0.29385587452105366157;0.080527489923576930919 0.10364397866154836936 0.017083228584465332683 0.1056550817204370829 0.15310077833018848059 0.19453753006422691563 0.060498751796458867525 0.0064036807485255836658 -0.13716981848112760889 -0.092326069088743606406 -1.0116795700921761281 -0.064697787799360695349 -0.053726639840018131089 -0.040075458065887102632;0.49797841801109488102 -1.1139957434289076144 -0.54992811812953934503 -0.52935356681061285222 -0.38657804396247441581 -0.41460870756809320437 0.58604121916525198088 0.20078236216906159006 0.65608811123794896769 0.16119167003389606174 -3.0403685135950477836 -2.0987054333594894473 0.61171008768648649223 2.2084909813661588451;0.14845450140212046453 0.064411170652926549862 0.17871647563642706347 0.16250925543909092164 0.18477485719983011148 0.1651231034559391686 0.16717030048345488114 0.033894542460713425469 -0.2248929638457903557 -0.11732889242498961702 -0.52298453058498917123 0.033490910954365515906 -0.022556475693334507304 -0.00092380911836405232851;0.31670727648607022164 -0.47556803731791735812 -1.5884417521255917993 1.7202617360308321004 -0.54518273218891888376 1.6288267641516069872 1.4202562780897114436 -0.54637346841939393727 -1.8348597913725568365 0.10822335259431209442 1.1085934974435680545 -0.19299625749789769968 -0.49217585258061047337 -0.66482890824884210978];

% Layer 2
b2 = [-1.7643089588157105929;0.77451128561820492546;0.47615589583974310406];
LW2_1 = [-0.40385010036930196753 -0.32792574124161621985 -0.13365568042825076711 0.61116005752931068518 -0.1491334364688942371 0.71016805312023068009 -1.6466493027989366205 -0.14286245845608530614 3.9962178647646244833 0.18907076394229826999;-0.00771860290494223375 0.064386091629691138971 -0.018188373323900199063 -0.49802606309686275887 0.0067773824692305140172 0.059301735988906888186 -0.13057702196239659442 0.038984286048930380519 -0.84979713585961991207 0.049838293251907181403;-0.011253601158951973341 0.28229663682367162059 0.19498532701771970066 -0.47661306671416242553 0.02023959441752308866 -0.017877374532666325674 2.0092808491107669866 0.17529438240309283548 -1.9341077578486927102 -0.12035830539779540649];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = [4.6518443399847;3.33333333333333;3.10405827683171];
y1_step1.xoffset = [0.259145;0.075;0.0818182];

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

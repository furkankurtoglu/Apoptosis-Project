% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
%                                                                         %
%              The p53 network model by Hat et al. (2016).                %
%                                                                         %
%  This file contains the definition of the complete model (= core +      %
%  apoptotic module + cell cycle arrest module). Most of parameters and   %
%  ODEs are defined here. This file is intended to be used by the main    %
%  simulation script, run_simulation.m.                                   %
%                                                                         %
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %


% The system of ODEs is autonomous => 1st parameter (time) has been omitted.
function dy = p53_network(~,y)  
%% --------------------------===[ PARAMETERS ]===--------------------------

global is_IR_switched_on;  % shared with run_simulation where defined

has_DNA_DSB_repair = 1; 
can_Caspase_make_DNA_DSB = 1; 


% Total amounts of molecules per cell --
%
global Rb_tot;          % (Global variables are defined
global SIAH1_tot;       %  in run_simulation.m and used 
global Bad_tot;         %  for defining initial
global BclXL_tot;       %  conditions.)
ATM_tot  = 1e5;
AKT_tot  = 1e5;         % [BMC Syst.Biol.2013: 2e5]
PIP_tot  = 1e5;         % total amount of {PIP2 and PIP3}
PI3K_tot = 1e5;
E2F1_tot = 2e5;
Fourteen33_tot = 2e5;   % [BMC Syst.Biol.2013: 2e5]

% Reaction rates --

% DNA damage and repair
%
global DNA_DSB_due_to_IR;    % irradiation phase duration-adjusted rate;
%                            % shared with run_simulation
%
h1 = 1e-6;       % rate of DNA damage introduced by IR      
h2 = can_Caspase_make_DNA_DSB*1e-13;  % DNA damage by active Caspase
% 
rep = has_DNA_DSB_repair * 1e-3;      % DNA repair rate
    
% protein activation 
%
a1 = 3e-10;      % activation of (pro)caspases by Bax [BMC Syst.Biol.2013: 2e-10]
a2 = 1e-12;      % Caspases autoactivation            [BMC Syst.Biol.2013: 1e-12]

% gene activation
%
q0_pten = 1e-5;  % spontaneous PTEN gene activation  
q0_wip1 = 1e-5;  % spontaneous Wip1 gene activation     
q0_mdm2 = 1e-4;  % spontaneous Mdm2 gene activation 
q0_bax  = 1e-5;  % spontaneous Bax  gene activation 
q0_p21  = 1e-5;  % spontaneous p21  gene activation 
%
q1_pten = 3e-13; % PTEN gene activation induced by p53 killer, equal 0 for PTEN non-inducible cells (MCF7)
q1_mdm2 = 3e-13; % Mdm2 gene activation induced by p53 arrester
q1_wip1 = 3e-13; % Wip1 gene activation induced by p53 arrester
q1_p21  = 3e-13; % p21  gene activation induced by p53 arrester 
q1_bax  = 3e-13; % Bax  gene activation induced by p53 killer
 
% gene inactivation
%
q2 = 3e-3;       % for genes of Wip1, Mdm2, p21, PTEN, Bax
    
% transcription
%
s1 = 0.1;        % Wip1 mRNA synthesis  
s2 = 0.03;       % PTEN mRNA synthesis
s3 = 0.1;        % Mdm2 mRNA synthesis
s4 = 0.03;       % Bax  mRNA synthesis [BMC Syst.Biol.2013: 0.03]
s5 = 0.1;        % p21  mRNA synthesis
    
% translation
%
t1 = 0.1;        % Wip1 translation
t2 = 0.1;        % PTEN translation
t3 = 0.1;        % Mdm2 translation   
t4 = 0.1;        % Bax  translation [BMC Syst.Biol.2013: 0.2]
t5 = 0.1;        % p21  translation
    
% protein synthesis    
%
s6 = 300;        % p53 sythesis
s7 =  30;        % proCaspases sythesis [BMC Syst.Biol.2013: 20]
s8 =  30;        % HIPK2 synthesis    
s9 =  30;        % Cyclin_E synthesis, induced by E2F1
s10=   3;        % Cyclin_E synthesis, spontaneous 
    
% phosphorylation 
%
p1  = 3e-4;      % ATM phosphorylation due to IR-induced DNA DSBs   
p2  = 1e-8;      % SIAH1 phosphorylation by ATM_p     
p3  = 3e-8;      % p53 phosphorylation by ATM_p at Ser15 and Ser20
p4  = 1e-10;     % p53 arrester phosphorylation by HIPK2 at Ser46    
p5  = 1e-8;      % Mdm2_cyt phosphorylation
p6  = 1e-8;      % Mdm2_nuc_S166S186p phosphorylation by ATM_p at Ser395     
p7  = 3e-9;      % Bad phosphorylation by AKT_p [BMC Syst.Biol.2013: 3e-10]
p8  = 3e-9;      % PIP3 phosphorylation by (implicit) PI3K
p9  = 3e-6;      % Rb1 phosphorylation by Cyclin_E
p10 =  p9;       % Rb1 phosphorylation by Cyclin_E in Rb1:E2F1 complex 
p11 =  p4;       % p53 phosphorylation by HIPK2 at Ser46
p12 = 1e-9;      % AKT phosphorylation at PIP3 
  
% dephosphorylation 
%
d1  = 1e-8;      % ATM_p dephosphorylation by Wip1
d2  = 3e-5;      % SIAH1_p dephosphorylation    
d3  = 1e-4;      % p53_arrester spontaneous dephosphorylation  
d4  = 1e-10;     % p53_killer dephoshorylation of Ser46 by Wip1   
d5  = 1e-4;      % Mdm2_cyt_S166S186p dephosphorylation of Ser166 and Ser186 
d6  = 1e-10;     % Mdm2_nuc_S166S186p_S395p dephosphorylation of Ser395 by Wip1 
d7  = 3e-7;      % PIP3 dephosphorylation to PIP2 by PTEN
d8  = 1e-4;      % AKT_p spontaneous dephosphorylation     
d9  = 3e-5;      % spontaneous Bad_p dephosphorylation [BMC Syst.Biol.2013: 3e-5]
d10 =  d3;       % p53_killer spontaneous dephosphorylation of Ser15 and Ser20  
d11 =  d4;       % p53_S46 dephoshorylation of Ser46 by Wip1 
d12 = 1e4;       % Rb1 dephosphorylation  
    
% proteins binding    
%
b1 = 3e-5;       % Bax and BclXL  [BMC Syst.Biol.2013: 3e-5]
b2 = 3e-3;       % BclXL and Bad_0 [BMC Syst.Biol.2013: 3e-3]
b3 = 3e-3;       % Bad_p and 14-3-3 [BMC Syst.Biol.2013: 3e-3]
b4 = 1e-5;       % Rb1 and E2F1 
b5 = 1e-5;       % p21 and Cyclin_E  

% unbinding 
%
u1 = 1e-3;       % Bax:BclXL complex  [BMC Syst.Biol.2013: 1e-4]       
u2 = 1e-3;       % Bad:BclXL complex   [BMC Syst.Biol.2013: 1e-4] 
u3 = 1e-3;       % Bad_p:14-3-3 complex [BMC Syst.Biol.2013: 1e-4] 
u5 = 1e-4;       % Rb1:E2F1 complex
u6 = 1e-4;       % p21:Cyclin_E complex 

% import/export
%
i1 = 1e-3;       % Mdm2_cyt_S166_S186 nuclear import  
        
% mRNA degradation
%
g1 = 3e-4;       % Wip1   
g2 = 3e-4;       % PTEN    
g3 = 3e-4;       % Mdm2 (controls oscillations of p53--Mdm2)
g4 = 3e-4;       % Bax [BMC Syst.Biol.2013: 1e-3]
g5 = 3e-4;       % p21
    
% protein degradation
  
g6  = 3e-5;      % PTEN (delay of positive feedback loop)  
g7  = 1e-13;     % Mdm2_nuc_S166186p-driven and SIAH1_0-driven HIPK2 degradation
g8  = 3e-4;      % Wip1 (time lag to ATM dephosphorylation)   
g9  = 1e-4;      % Bax (delay of apoptosis)  [BMC Syst.Biol.2013: 1e-4] 
g10 = 1e-5;      % p53 spontaneous degradation
g101= 1e-5;      % p53 non-killer, non ser46 spontaneous degradation 
g11 = 1e-11;     % p53 degradation forced by Mdm2_nuc_S166_S186 (power 2)    
g12 = 1e-13;     % p53_arrester degradation forced by Mdm2_nuc_S166S186p (power 2)
g13 = g12;       % p53_killer degradation forced by Mdm2_nuc_S166S186p    
g14 = 1e-4;      % Mdm2_cyt_0  
g15 = 3e-5;      % Mdm2_cyt_S166S186p, Mdm2_nuc_S166S186p, Mdm2_n_S166S186p_S395p spontaneous degradation
g16 = 1e-4;      % Mdm2_nuc_S166S186p_395p degradatoin Ser395p-dependent
g17 = 3e-4;      % proCaspase [BMC Syst.Biol.2013: 2e-4]
g18 = g17;       % Caspase
g19 = 3e-4;      % p21
g20 = 1e-4;      % Cyclin_E
    

% Hill coefficient
h = 2;           % used in multiple places
   
% Michaelis--Menten constants:
M1 =  5;         % M--M const. in ATM phoshorylation due to IR 
M2 = 1e5;        % M--M const. in Rb1 dephosphorylation at Ser567 
M3 = 2e5;        % M--M const. in Cyclin_E synthesis by E2F1
  
DNA_DSB_RepairCplx_total = 20;  % number of repair complexes
DNA_DSB_max = 1e6;              % max number of DNA DSBs


% Reusable expressions for genes' activity

AS_MDM2 = (q0_mdm2 + q1_mdm2*y(6)^h)/(q2+q0_mdm2 + q1_mdm2*y(6)^h);  % gene state Mdm2                                   
AS_PTEN = (q0_pten + q1_pten*y(8)^h)/(q2+q0_pten + q1_pten*y(8)^h);  % gene state PTEN  
AS_WIP1 = (q0_wip1 + q1_wip1*y(6)^h)/(q2+q0_wip1 + q1_wip1*y(6)^h);  % gene state Wip1
AS_p21  = (q0_p21  + q1_p21 *y(6)^h)/(q2+q0_p21  + q1_p21 *y(6)^h);  % gene state p21
AS_BAX  = (q0_bax  + q1_bax *y(8)^h)/(q2+q0_bax  + q1_bax *y(8)^h);  % gene state Bax


%% ----------------------------===[ DYNAMICS ]===--------------------------

dy = zeros(33,1);

%--------- CORE -----------------------------------------------------------

ATM_0   = ATM_tot   - y( 2);
SIAH1_p = SIAH1_tot - y( 3);
AKT_0   = AKT_tot   - y(19);
PIP2    = PIP_tot   - y(18);

% DNA_DSB (DNA damage)
dy(1)=...
  (h1*DNA_DSB_due_to_IR*is_IR_switched_on+h2*y(33))*(DNA_DSB_max-y(1))... 
  -(y(1)*rep)/(y(1)+DNA_DSB_RepairCplx_total);

% ATM_p
dy(2)= ...
  -d1*y(15)*y(2)...               % dephoshorylation by Wip1
  +p1*ATM_0*y(1)^h/(y(1)^h+M1^h); % phoshorylation due to IR 

% SIAH1_0
dy(3)=...
  -p2*y(2)*y(3)...           % phosphorylation by ATM_p
  +d2*SIAH1_p;               % SIAH1_p dephosphorylation

% HIPK2
dy(4)= ...
  +s8 ...                    % synthesis
  -g7*y(4)*(y(12)+y(3))^2;   % degradation induced by Mdm2_nuc_S166S186p and SIAH1

% p53_0p
dy(5)=...
  +s6...                     % synthesis
  -p3*y(2)*y(5)...           % phosphorylation by ATM_p on Ser15 and Ser20
  +d3*y(6)...                % spontanuous dephosphorylation of p53_arrester
  -(g101+g11*y(12)^h)*y(5)...% degradation: spontanuous and induced by Mdm2_nuc_S166S186p 
  +d11*y(15)*y(7)...         % p53_Ser46 dephosphorylation of Ser46 by Wip1
  -p11*y(4)*y(5);            % phosphorylation at Ser46 by HIPK2

% p53_arrester
dy(6)=...
  +p3*y(2)*y(5)...           % phosphorylation by ATM_p on Ser15 and Ser20
  -d3*y(6)...                % spontanuous dephosphorylation
  -(g101+g12*y(12)^h)*y(6)...% degradation: spontaneous and induced by Mdm2_nuc_S166S186p
  -p4*y(6)*y(4)...           % phosphorylation at Ser46 by HIPK2
  +d4*y(15)*y(8);            % p53_killer dephosphorylation at Ser46 by Wip1

% p53_S46p
dy(7)=...
  +p11*y(4)*y(5)...          % p53_0 phosphorylation at Ser46 by HIPK2
  -d11*y(15)*y(7)...         % p53_S46p dephosphorylation at Ser46 by Wip1
  -p3*y(2)*y(7)...           % p53_S46p phosphorylation by ATM_p at Ser15 and Ser20
  -(g10+g13*y(12)^h)*y(7)... % degradation: spontaneous and by induced by Mdm2_nuc_S166S186p
  +d10*y(8);                 % p53_killer dephosphorylation of Ser15 and Ser20   

% p53_killer
dy(8)=...
  +p4*y(6)*y(4)...           % p53_arrester phosphorylation at Ser46 by HIPK2
  -d4*y(15)*y(8) ...         % dephosphorylation at Ser46 by Wip1
  -(g10+g13*y(12)^h)*y(8)... % degradation: spontaneous and induced by Mdm2_nuc_S166S186p
  +p3*y(2)*y(7)...           % p53_S46 phosphorylation by ATM_p at Ser15 and Ser20
  -d10*y(8);                 % dephosphorylation of Ser15 and Ser20

% Mdm2 mRNA  
dy(9)=...
  +s3*AS_MDM2...             % Mdm2 gene transcription
  -g3*y(9);                  % spontaneous degradation

% MDM2_cyt_0p
dy(10)= ...
  +t3*y(9) ...               % translation
  -p5*y(10)*y(19) ...        % Mdm2_cyt_0 phosphorylation by AKT_p
  +d5*y(11) ...              % dephosphorylation at Ser166 and 186
  -g14*y(10);                % spontaneous degradation

% Mdm2_cyt_S166S186p
dy(11)=...
  -i1*y(11) ...              % Mdm2_cyt_S166S186p nuclear import
  +p5*y(10)*y(19) ...        % Mdm2_cyt_0 phosphorylation by AKT_p
  -d5*y(11) ...              % dephosphorylation of Ser166 and Set186
  -g15*y(11);                % spontaneous degradation 

% Mdm2_nuc_S166S186p
dy(12)= ...
  +i1*y(11) ...              % Mdm2_cyt_S166S186p nuclear import
  -g15*y(12) ...             % spontaneous degradation 
  -p6*y(2)*y(12) ...         % phosphorylation by ATM_p at Ser395
  +d6*y(15)*y(13);           % dephosphorylation of Ser395 of Mdm2_nuc_S166S186p_S395p by Wip1 

% Mdm2_nuc_S166S186p_S395p
dy(13)=...
  +p6*y(2)*y(12) ...         % Mdm2_nuc_S166S186p phosphorylation at Ser395 by ATM_p
  -d6*y(15)*y(13) ...        % Mdm2_nuc_S166S186p_S395p dephosphorylation at Ser395 by Wip1 
  -g15*y(13) ...             % spontaneous degradation 
  -g16*y(13);                % Ser395p-dependent degradation

% Wip1 mRNA  
dy(14)= ...
  +s1*AS_WIP1 ...            % Wip1 gene transcription 
  -g1*y(14);                 % degradation

% Wip1 (protein)
dy(15)= ... 
  +t1*y(14) ...              % Wip mRNA translation
  -g8*y(15);                 % degradation 

% PTEN mRNA  
dy(16)=...
  +s2*AS_PTEN...             % PTEN gene transcription
  -g2*y(16);                 % degradation 

% PTEN (protein)
dy(17)=...
  +t2*y(16)...               % PTEN_mRNA translation 
  -g6*y(17);                 % degradation 

% PIP3
dy(18)=...
  +p8*PIP2*PI3K_tot...       % phopshorylation by PI3K
  -d7*y(17)*y(18);           % dephosphorylation by PTEN

% AKT_p
dy(19)=...
  +p12*AKT_0*y(18) ...       % phopshorylation at PIP3
  -d8*y(19);                 % dephosphorylation 


%-------- CELL CYCLE ARREST MODULE ----------------------------------------

Rb_p = Rb_tot - (y(22) + y(23));
E2F1 = E2F1_tot - y(23);

% p21 mRNA
dy(20)=...
  +s5*AS_p21...              % p21 gene transcription
  -g5*y(20);                 % p21 mRNA degradation  

% p21 (protein, free)
dy(21)=...
  +t5*y(20)...               % p21 mRNA translation
  +u6*y(25)...               % Cyclin_E:p21 complex dissociation
  -b5*y(24)*y(21)...         % Cyclin_E and p21 binding
  -g19*y(21);                % p21 degradation

% Rb1_0 (free)
dy(22)=...
  +(d12*Rb_p/(M2+Rb_p))...   % Rb1 dephosphorylation at S567
  -b4*y(22)*E2F1...          % Rb1 and E2F1 binding
  -p9*y(24)*y(22)...         % Rb1 phosphorylation by Cyclin_E 
  +u5*y(23);                 % Rb1:E2F1 complex dissociation

% Rb1_0:E2F1 complex
dy(23)=...
  +b4*y(22)*E2F1...          % Rb1 and E2F1 binding
  -u5*y(23)...               % Rb1:E2F1 complex dissociation
  -p10*y(24)*y(23);          % Rb1 phosphorylation in Rb1:E2F1 complex by Cyclin_E

% Cyclin_E (free)
dy(24)=...
  +s10...                    % Cyclin_E synthesis
  +s9*E2F1^2/(M3^2+E2F1^2)...% Cyclin_E synthesis induced by E2F1
  -b5*y(24)*y(21)...         % Cyclin_E and p21 binding
  +u6*y(25)...               % Cyclin_E:p21 complex dissociation
  -g20*y(24);                % Cyclin_E degradation

% Cyclin_E:p21 complex
dy(25)=...
  +b5*y(24)*y(21)...         % Cyclin_E and p21 binding
  -u6*y(25)...               % Cyclin_E:p21 complex dissociation
  -g20*y(25);                % Cyclin_E:p21 complex degradation


% ------- APOPTOTIC MODULE ------------------------------------------------

BclXL_Bad_complex = BclXL_tot - (y(28) + y(29));
Bad_p_Fourteen33_complex = Bad_tot - (BclXL_Bad_complex + y(30) + y(31));
Fourteen33_free = Fourteen33_tot - Bad_p_Fourteen33_complex;

% Bax mRNA
dy(26)= ... 
  +s4*AS_BAX...              % Bax gene transcription
  -g4*y(26);                 % Bax mRNA degradation
  
% Bax (protein, free)
dy(27)=...
  +t4*y(26)...               % Bax mRNA translation 
  +u1*y(29)...               % Bax:BclXL complex dissociation
  -b1*y(28)*y(27)...         % Bax and BclXL binding
  -g9*y(27);                 % Bax degradation

% BclXL (free)
dy(28)=...
  +u2*BclXL_Bad_complex...   % BclXL:Bad complex dissociation
  +u1*y(29)...               % Bax:BclXL complex dissociation
  +g16*y(29)...              % Bax degradation in Bax:BclXL complex
  +p7*y(19)*BclXL_Bad_complex...  % Bad phosphorylation in BclXL:Bad complex
  -b2*y(28)*y(30)...         % BclXL and Bad binding
  -b1*y(28)*y(27);           % Bax and BclXL binding

% Bax:BclXL complex
dy(29)=...
  +b1*y(28)*y(27)...         % Bax and BclXL binding
  -u1*y(29)...               % Bax:BclXL complex dissociation
  -g16*y(29);                % Bax degradation in Bax:BclXL complex 

% Bad_0 (free)
dy(30)=...
  +d9*y(31)...               % Bad_p dephosphorylation 
  +u2*BclXL_Bad_complex...   % BclXL:Bad complex dissociation
  -p7*y(19)*y(30)...         % Bad_0 phosphorylation by AKT_p
  +d9*Bad_p_Fourteen33_complex... % Bad_p dephosphorylation and dissociation in Bad:14_3_3 complex
  -b2*y(30)*y(28);           % BclXL and Bad_0 binding

% Bad_p (free)
dy(31)=...
  +p7*y(19)*y(30)...         % Bad_0 phosphorylation by AKT_p
  +u3*Bad_p_Fourteen33_complex... % Bad:14-3-3 complex dissociation 
  +p7*y(19)*BclXL_Bad_complex...  % Bad phosphorylation in BclXL:Bad complex and complex dissociationn
  -d9*y(31)...               % Bad_p dephosphorylation 
  -b3*y(31)*Fourteen33_free; % Bad_p and 14-3-3 binding

% proCaspases (inactive caspases)
dy(32)=...
  +s7...                     % proCaspase synthesis
  -g17*y(32)...              % proCaspase degradation 
  -a1*y(27)*y(32)...         % caspases activation by active (i.e., free) Bax
  -a2*((y(33))^2)*y(32);     % caspases autoactivation

% Caspases (active caspases)
dy(33)=...
  -g18*y(33)...              % caspases degradation
  +a1*y(27)*y(32) ...        % caspases activation by active (i.e., free) Bax
  +a2*((y(33))^2)*y(32);     % caspases autoactivation

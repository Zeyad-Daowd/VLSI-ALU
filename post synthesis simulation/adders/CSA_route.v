module carry_select_adder_route (cin,
    cout,
    a,
    b,
    sum);
 input cin;
 output cout;
 input [31:0] a;
 input [31:0] b;
 output [31:0] sum;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire _126_;
 wire _127_;
 wire _128_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _144_;
 wire _145_;
 wire _146_;
 wire _147_;
 wire _148_;
 wire _149_;
 wire _150_;
 wire _151_;
 wire _152_;
 wire _153_;
 wire _154_;
 wire _155_;
 wire _156_;
 wire _157_;
 wire _158_;
 wire _159_;
 wire _160_;
 wire _161_;
 wire _162_;
 wire _163_;
 wire _164_;
 wire _165_;
 wire _166_;
 wire _167_;
 wire _168_;
 wire _169_;
 wire _170_;
 wire _171_;
 wire _172_;
 wire _173_;
 wire _174_;
 wire _175_;
 wire _176_;
 wire _177_;
 wire _178_;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire net57;
 wire net58;
 wire net59;
 wire net60;
 wire net61;
 wire net62;
 wire net63;
 wire net64;
 wire net65;
 wire net66;
 wire net67;
 wire net68;
 wire net69;
 wire net70;
 wire net71;
 wire net72;
 wire net73;
 wire net74;
 wire net75;
 wire net76;
 wire net77;
 wire net78;
 wire net79;
 wire net80;
 wire net81;
 wire net82;
 wire net83;
 wire net84;
 wire net85;
 wire net86;
 wire net87;
 wire net88;
 wire net89;
 wire net90;
 wire net91;
 wire net92;
 wire net93;
 wire net94;
 wire net95;
 wire net96;
 wire net97;
 wire net98;

 sky130_fd_sc_hd__nand2_1 _179_ (.A(net19),
    .B(net51),
    .Y(_178_));
 sky130_fd_sc_hd__or2_1 _180_ (.A(net19),
    .B(net51),
    .X(_000_));
 sky130_fd_sc_hd__nand2_1 _181_ (.A(_178_),
    .B(_000_),
    .Y(_001_));
 sky130_fd_sc_hd__nand2_1 _182_ (.A(net18),
    .B(net50),
    .Y(_002_));
 sky130_fd_sc_hd__or2_1 _183_ (.A(net18),
    .B(net50),
    .X(_003_));
 sky130_fd_sc_hd__and2_1 _184_ (.A(net17),
    .B(net49),
    .X(_004_));
 sky130_fd_sc_hd__nand2_1 _185_ (.A(_003_),
    .B(_004_),
    .Y(_005_));
 sky130_fd_sc_hd__and2_1 _186_ (.A(_002_),
    .B(_005_),
    .X(_006_));
 sky130_fd_sc_hd__xnor2_1 _187_ (.A(_001_),
    .B(_006_),
    .Y(_007_));
 sky130_fd_sc_hd__nand2_1 _188_ (.A(_002_),
    .B(_003_),
    .Y(_008_));
 sky130_fd_sc_hd__nand2_1 _189_ (.A(net15),
    .B(net47),
    .Y(_009_));
 sky130_fd_sc_hd__or2_1 _190_ (.A(net15),
    .B(net47),
    .X(_010_));
 sky130_fd_sc_hd__nand2_1 _191_ (.A(_009_),
    .B(_010_),
    .Y(_011_));
 sky130_fd_sc_hd__and2_1 _192_ (.A(net13),
    .B(net45),
    .X(_012_));
 sky130_fd_sc_hd__o21a_1 _193_ (.A1(net14),
    .A2(net46),
    .B1(_012_),
    .X(_013_));
 sky130_fd_sc_hd__a21oi_1 _194_ (.A1(net14),
    .A2(net46),
    .B1(_013_),
    .Y(_014_));
 sky130_fd_sc_hd__xnor2_1 _195_ (.A(_011_),
    .B(_014_),
    .Y(_015_));
 sky130_fd_sc_hd__xnor2_1 _196_ (.A(net14),
    .B(net46),
    .Y(_016_));
 sky130_fd_sc_hd__nand2_1 _197_ (.A(net10),
    .B(net42),
    .Y(_017_));
 sky130_fd_sc_hd__or2_1 _198_ (.A(net10),
    .B(net42),
    .X(_018_));
 sky130_fd_sc_hd__nand2_1 _199_ (.A(_017_),
    .B(_018_),
    .Y(_019_));
 sky130_fd_sc_hd__nand2_1 _200_ (.A(net9),
    .B(net41),
    .Y(_020_));
 sky130_fd_sc_hd__or2_1 _201_ (.A(net9),
    .B(net41),
    .X(_021_));
 sky130_fd_sc_hd__and2_1 _202_ (.A(net8),
    .B(net40),
    .X(_022_));
 sky130_fd_sc_hd__nand2_1 _203_ (.A(_021_),
    .B(_022_),
    .Y(_023_));
 sky130_fd_sc_hd__and2_1 _204_ (.A(_020_),
    .B(_023_),
    .X(_024_));
 sky130_fd_sc_hd__xnor2_1 _205_ (.A(_019_),
    .B(_024_),
    .Y(_025_));
 sky130_fd_sc_hd__nand2_1 _206_ (.A(_020_),
    .B(_021_),
    .Y(_026_));
 sky130_fd_sc_hd__nand2_1 _207_ (.A(net6),
    .B(net38),
    .Y(_027_));
 sky130_fd_sc_hd__or2_1 _208_ (.A(net6),
    .B(net38),
    .X(_028_));
 sky130_fd_sc_hd__nand2_1 _209_ (.A(_027_),
    .B(_028_),
    .Y(_029_));
 sky130_fd_sc_hd__and2_1 _210_ (.A(net4),
    .B(net36),
    .X(_030_));
 sky130_fd_sc_hd__o21a_1 _211_ (.A1(net5),
    .A2(net37),
    .B1(_030_),
    .X(_031_));
 sky130_fd_sc_hd__a21oi_1 _212_ (.A1(net5),
    .A2(net37),
    .B1(_031_),
    .Y(_032_));
 sky130_fd_sc_hd__xnor2_1 _213_ (.A(_029_),
    .B(_032_),
    .Y(_033_));
 sky130_fd_sc_hd__xnor2_2 _214_ (.A(net5),
    .B(net37),
    .Y(_034_));
 sky130_fd_sc_hd__nand2_1 _215_ (.A(net31),
    .B(net63),
    .Y(_035_));
 sky130_fd_sc_hd__or2_1 _216_ (.A(net31),
    .B(net63),
    .X(_036_));
 sky130_fd_sc_hd__nand2_1 _217_ (.A(_035_),
    .B(_036_),
    .Y(_037_));
 sky130_fd_sc_hd__inv_2 _218_ (.A(_037_),
    .Y(_038_));
 sky130_fd_sc_hd__or2_1 _219_ (.A(net26),
    .B(net58),
    .X(_039_));
 sky130_fd_sc_hd__nand2_1 _220_ (.A(net23),
    .B(net55),
    .Y(_040_));
 sky130_fd_sc_hd__or2_1 _221_ (.A(net23),
    .B(net55),
    .X(_041_));
 sky130_fd_sc_hd__and2_1 _222_ (.A(_040_),
    .B(_041_),
    .X(_042_));
 sky130_fd_sc_hd__nand2_1 _223_ (.A(net12),
    .B(net44),
    .Y(_043_));
 sky130_fd_sc_hd__nand2_1 _224_ (.A(net1),
    .B(net33),
    .Y(_044_));
 sky130_fd_sc_hd__or2_1 _225_ (.A(net1),
    .B(net33),
    .X(_045_));
 sky130_fd_sc_hd__nand2_1 _226_ (.A(_044_),
    .B(_045_),
    .Y(_046_));
 sky130_fd_sc_hd__a21bo_1 _227_ (.A1(net65),
    .A2(_045_),
    .B1_N(_044_),
    .X(_047_));
 sky130_fd_sc_hd__or2_1 _228_ (.A(net12),
    .B(net44),
    .X(_048_));
 sky130_fd_sc_hd__nand2_1 _229_ (.A(_043_),
    .B(_048_),
    .Y(_049_));
 sky130_fd_sc_hd__a21bo_1 _230_ (.A1(_047_),
    .A2(_048_),
    .B1_N(_043_),
    .X(_050_));
 sky130_fd_sc_hd__nand2_1 _231_ (.A(_042_),
    .B(_050_),
    .Y(_051_));
 sky130_fd_sc_hd__nand2_1 _232_ (.A(net26),
    .B(net58),
    .Y(_052_));
 sky130_fd_sc_hd__nand2_1 _233_ (.A(_040_),
    .B(_052_),
    .Y(_053_));
 sky130_fd_sc_hd__a21o_1 _234_ (.A1(_042_),
    .A2(_050_),
    .B1(_053_),
    .X(_054_));
 sky130_fd_sc_hd__nand2_1 _235_ (.A(_039_),
    .B(_054_),
    .Y(_055_));
 sky130_fd_sc_hd__or2_1 _236_ (.A(net28),
    .B(net60),
    .X(_056_));
 sky130_fd_sc_hd__nand2_1 _237_ (.A(net28),
    .B(net60),
    .Y(_057_));
 sky130_fd_sc_hd__nand2_1 _238_ (.A(_056_),
    .B(_057_),
    .Y(_058_));
 sky130_fd_sc_hd__nand2_1 _239_ (.A(net27),
    .B(net59),
    .Y(_059_));
 sky130_fd_sc_hd__or2_1 _240_ (.A(net27),
    .B(net59),
    .X(_060_));
 sky130_fd_sc_hd__nand2_1 _241_ (.A(_059_),
    .B(_060_),
    .Y(_061_));
 sky130_fd_sc_hd__xor2_1 _242_ (.A(net29),
    .B(net61),
    .X(_062_));
 sky130_fd_sc_hd__xor2_1 _243_ (.A(net30),
    .B(net62),
    .X(_063_));
 sky130_fd_sc_hd__and4bb_1 _244_ (.A_N(_058_),
    .B_N(_061_),
    .C(_062_),
    .D(_063_),
    .X(_064_));
 sky130_fd_sc_hd__nand2_1 _245_ (.A(_057_),
    .B(_059_),
    .Y(_065_));
 sky130_fd_sc_hd__and3_1 _246_ (.A(_056_),
    .B(_062_),
    .C(_065_),
    .X(_066_));
 sky130_fd_sc_hd__a21oi_1 _247_ (.A1(_056_),
    .A2(_065_),
    .B1(_062_),
    .Y(_067_));
 sky130_fd_sc_hd__or2_1 _248_ (.A(_066_),
    .B(_067_),
    .X(_068_));
 sky130_fd_sc_hd__or2_1 _249_ (.A(_055_),
    .B(_061_),
    .X(_069_));
 sky130_fd_sc_hd__nor2_1 _250_ (.A(_058_),
    .B(_069_),
    .Y(_070_));
 sky130_fd_sc_hd__a32o_1 _251_ (.A1(_056_),
    .A2(_062_),
    .A3(_065_),
    .B1(net61),
    .B2(net29),
    .X(_071_));
 sky130_fd_sc_hd__and2_1 _252_ (.A(_063_),
    .B(_071_),
    .X(_072_));
 sky130_fd_sc_hd__nor2_1 _253_ (.A(_063_),
    .B(_071_),
    .Y(_073_));
 sky130_fd_sc_hd__and3_1 _254_ (.A(_039_),
    .B(_054_),
    .C(_064_),
    .X(_074_));
 sky130_fd_sc_hd__o21a_1 _255_ (.A1(net30),
    .A2(net62),
    .B1(_071_),
    .X(_075_));
 sky130_fd_sc_hd__a21o_1 _256_ (.A1(net30),
    .A2(net62),
    .B1(_075_),
    .X(_076_));
 sky130_fd_sc_hd__o21ai_2 _257_ (.A1(_074_),
    .A2(_076_),
    .B1(_038_),
    .Y(_077_));
 sky130_fd_sc_hd__and2_1 _258_ (.A(net3),
    .B(net35),
    .X(_078_));
 sky130_fd_sc_hd__or2_1 _259_ (.A(net3),
    .B(net35),
    .X(_079_));
 sky130_fd_sc_hd__nand2b_1 _260_ (.A_N(_078_),
    .B(_079_),
    .Y(_080_));
 sky130_fd_sc_hd__or2_1 _261_ (.A(net32),
    .B(net64),
    .X(_081_));
 sky130_fd_sc_hd__nand2_1 _262_ (.A(net32),
    .B(net64),
    .Y(_082_));
 sky130_fd_sc_hd__nand2_1 _263_ (.A(_081_),
    .B(_082_),
    .Y(_083_));
 sky130_fd_sc_hd__xor2_1 _264_ (.A(net2),
    .B(net34),
    .X(_084_));
 sky130_fd_sc_hd__nand2_1 _265_ (.A(_035_),
    .B(_082_),
    .Y(_085_));
 sky130_fd_sc_hd__and3_1 _266_ (.A(_081_),
    .B(_084_),
    .C(_085_),
    .X(_086_));
 sky130_fd_sc_hd__a21oi_1 _267_ (.A1(_081_),
    .A2(_085_),
    .B1(_084_),
    .Y(_087_));
 sky130_fd_sc_hd__nor2_1 _268_ (.A(_086_),
    .B(_087_),
    .Y(_088_));
 sky130_fd_sc_hd__or3b_1 _269_ (.A(_077_),
    .B(_083_),
    .C_N(_088_),
    .X(_089_));
 sky130_fd_sc_hd__a21o_1 _270_ (.A1(net2),
    .A2(net34),
    .B1(_086_),
    .X(_090_));
 sky130_fd_sc_hd__xnor2_1 _271_ (.A(_080_),
    .B(_090_),
    .Y(_091_));
 sky130_fd_sc_hd__or4b_1 _272_ (.A(_077_),
    .B(_080_),
    .C(_083_),
    .D_N(_084_),
    .X(_092_));
 sky130_fd_sc_hd__o21ai_1 _273_ (.A1(_078_),
    .A2(_090_),
    .B1(_079_),
    .Y(_093_));
 sky130_fd_sc_hd__and2_1 _274_ (.A(_092_),
    .B(_093_),
    .X(_094_));
 sky130_fd_sc_hd__nor2_1 _275_ (.A(net4),
    .B(net36),
    .Y(_095_));
 sky130_fd_sc_hd__nor2_1 _276_ (.A(_030_),
    .B(_095_),
    .Y(_096_));
 sky130_fd_sc_hd__inv_2 _277_ (.A(_096_),
    .Y(_097_));
 sky130_fd_sc_hd__or2_1 _278_ (.A(_094_),
    .B(_097_),
    .X(_098_));
 sky130_fd_sc_hd__a2111oi_2 _279_ (.A1(_092_),
    .A2(_093_),
    .B1(_097_),
    .C1(_034_),
    .D1(_033_),
    .Y(_099_));
 sky130_fd_sc_hd__o21ai_1 _280_ (.A1(_029_),
    .A2(_032_),
    .B1(_027_),
    .Y(_100_));
 sky130_fd_sc_hd__nand2_1 _281_ (.A(net7),
    .B(net39),
    .Y(_101_));
 sky130_fd_sc_hd__or2_1 _282_ (.A(net7),
    .B(net39),
    .X(_102_));
 sky130_fd_sc_hd__nand2_1 _283_ (.A(_101_),
    .B(_102_),
    .Y(_103_));
 sky130_fd_sc_hd__xor2_1 _284_ (.A(_100_),
    .B(_103_),
    .X(_104_));
 sky130_fd_sc_hd__inv_2 _285_ (.A(_104_),
    .Y(_105_));
 sky130_fd_sc_hd__nand2b_1 _286_ (.A_N(_100_),
    .B(_101_),
    .Y(_106_));
 sky130_fd_sc_hd__a22oi_2 _287_ (.A1(_099_),
    .A2(_105_),
    .B1(_106_),
    .B2(_102_),
    .Y(_107_));
 sky130_fd_sc_hd__nor2_1 _288_ (.A(net8),
    .B(net40),
    .Y(_108_));
 sky130_fd_sc_hd__nor2_1 _289_ (.A(_022_),
    .B(_108_),
    .Y(_109_));
 sky130_fd_sc_hd__or3b_1 _290_ (.A(_026_),
    .B(_107_),
    .C_N(_109_),
    .X(_110_));
 sky130_fd_sc_hd__or4b_1 _291_ (.A(_025_),
    .B(_026_),
    .C(_107_),
    .D_N(_109_),
    .X(_111_));
 sky130_fd_sc_hd__o21ai_1 _292_ (.A1(_019_),
    .A2(_024_),
    .B1(_017_),
    .Y(_112_));
 sky130_fd_sc_hd__and2_1 _293_ (.A(net11),
    .B(net43),
    .X(_113_));
 sky130_fd_sc_hd__or2_1 _294_ (.A(net11),
    .B(net43),
    .X(_114_));
 sky130_fd_sc_hd__nand2b_1 _295_ (.A_N(_113_),
    .B(_114_),
    .Y(_115_));
 sky130_fd_sc_hd__xor2_1 _296_ (.A(_112_),
    .B(_115_),
    .X(_116_));
 sky130_fd_sc_hd__or2_1 _297_ (.A(_111_),
    .B(_116_),
    .X(_117_));
 sky130_fd_sc_hd__o21ai_1 _298_ (.A1(_112_),
    .A2(_113_),
    .B1(_114_),
    .Y(_118_));
 sky130_fd_sc_hd__and2_1 _299_ (.A(_117_),
    .B(_118_),
    .X(_119_));
 sky130_fd_sc_hd__nor2_1 _300_ (.A(net13),
    .B(net45),
    .Y(_120_));
 sky130_fd_sc_hd__nor2_1 _301_ (.A(_012_),
    .B(_120_),
    .Y(_121_));
 sky130_fd_sc_hd__inv_2 _302_ (.A(_121_),
    .Y(_122_));
 sky130_fd_sc_hd__or2_1 _303_ (.A(_119_),
    .B(_122_),
    .X(_123_));
 sky130_fd_sc_hd__a2111o_1 _304_ (.A1(_117_),
    .A2(_118_),
    .B1(_122_),
    .C1(_016_),
    .D1(_015_),
    .X(_124_));
 sky130_fd_sc_hd__o21ai_1 _305_ (.A1(_011_),
    .A2(_014_),
    .B1(_009_),
    .Y(_125_));
 sky130_fd_sc_hd__nand2_1 _306_ (.A(net16),
    .B(net48),
    .Y(_126_));
 sky130_fd_sc_hd__or2_1 _307_ (.A(net16),
    .B(net48),
    .X(_127_));
 sky130_fd_sc_hd__nand2_1 _308_ (.A(_126_),
    .B(_127_),
    .Y(_128_));
 sky130_fd_sc_hd__xor2_1 _309_ (.A(_125_),
    .B(_128_),
    .X(_129_));
 sky130_fd_sc_hd__nand2_1 _310_ (.A(_125_),
    .B(_127_),
    .Y(_130_));
 sky130_fd_sc_hd__o211a_1 _311_ (.A1(_124_),
    .A2(_129_),
    .B1(_130_),
    .C1(_126_),
    .X(_131_));
 sky130_fd_sc_hd__nor2_1 _312_ (.A(net17),
    .B(net49),
    .Y(_132_));
 sky130_fd_sc_hd__nor2_1 _313_ (.A(_004_),
    .B(_132_),
    .Y(_133_));
 sky130_fd_sc_hd__or3b_1 _314_ (.A(_008_),
    .B(_131_),
    .C_N(_133_),
    .X(_134_));
 sky130_fd_sc_hd__or4b_2 _315_ (.A(_007_),
    .B(_008_),
    .C(_131_),
    .D_N(_133_),
    .X(_135_));
 sky130_fd_sc_hd__o21ai_2 _316_ (.A1(_001_),
    .A2(_006_),
    .B1(_178_),
    .Y(_136_));
 sky130_fd_sc_hd__nand2_1 _317_ (.A(net20),
    .B(net52),
    .Y(_137_));
 sky130_fd_sc_hd__or2_1 _318_ (.A(net20),
    .B(net52),
    .X(_138_));
 sky130_fd_sc_hd__nand2_1 _319_ (.A(_137_),
    .B(_138_),
    .Y(_139_));
 sky130_fd_sc_hd__xor2_2 _320_ (.A(_136_),
    .B(_139_),
    .X(_140_));
 sky130_fd_sc_hd__nand2_1 _321_ (.A(_136_),
    .B(_138_),
    .Y(_141_));
 sky130_fd_sc_hd__o211ai_4 _322_ (.A1(_135_),
    .A2(_140_),
    .B1(_141_),
    .C1(_137_),
    .Y(_142_));
 sky130_fd_sc_hd__and2_1 _323_ (.A(net21),
    .B(net53),
    .X(_143_));
 sky130_fd_sc_hd__nor2_1 _324_ (.A(net21),
    .B(net53),
    .Y(_144_));
 sky130_fd_sc_hd__nor2_1 _325_ (.A(_143_),
    .B(_144_),
    .Y(_145_));
 sky130_fd_sc_hd__and2_1 _326_ (.A(net22),
    .B(net54),
    .X(_146_));
 sky130_fd_sc_hd__nor2_1 _327_ (.A(net22),
    .B(net54),
    .Y(_147_));
 sky130_fd_sc_hd__nor2_1 _328_ (.A(_146_),
    .B(_147_),
    .Y(_148_));
 sky130_fd_sc_hd__and2_1 _329_ (.A(net24),
    .B(net56),
    .X(_149_));
 sky130_fd_sc_hd__nor2_1 _330_ (.A(net24),
    .B(net56),
    .Y(_150_));
 sky130_fd_sc_hd__nor2_1 _331_ (.A(_149_),
    .B(_150_),
    .Y(_151_));
 sky130_fd_sc_hd__a21oi_1 _332_ (.A1(_143_),
    .A2(_148_),
    .B1(_146_),
    .Y(_152_));
 sky130_fd_sc_hd__xnor2_1 _333_ (.A(_151_),
    .B(_152_),
    .Y(_153_));
 sky130_fd_sc_hd__nand4_1 _334_ (.A(_142_),
    .B(_145_),
    .C(_148_),
    .D(_153_),
    .Y(_154_));
 sky130_fd_sc_hd__o21bai_1 _335_ (.A1(_150_),
    .A2(_152_),
    .B1_N(_149_),
    .Y(_155_));
 sky130_fd_sc_hd__nand2_1 _336_ (.A(net25),
    .B(net57),
    .Y(_156_));
 sky130_fd_sc_hd__or2_1 _337_ (.A(net25),
    .B(net57),
    .X(_157_));
 sky130_fd_sc_hd__nand2_1 _338_ (.A(_156_),
    .B(_157_),
    .Y(_158_));
 sky130_fd_sc_hd__xor2_1 _339_ (.A(_155_),
    .B(_158_),
    .X(_159_));
 sky130_fd_sc_hd__nand2b_1 _340_ (.A_N(_155_),
    .B(_156_),
    .Y(_160_));
 sky130_fd_sc_hd__a2bb2o_1 _341_ (.A1_N(_154_),
    .A2_N(_159_),
    .B1(_160_),
    .B2(_157_),
    .X(net66));
 sky130_fd_sc_hd__nand2_1 _342_ (.A(_055_),
    .B(_061_),
    .Y(_161_));
 sky130_fd_sc_hd__and2_1 _343_ (.A(_069_),
    .B(_161_),
    .X(net93));
 sky130_fd_sc_hd__nand2_1 _344_ (.A(_059_),
    .B(_069_),
    .Y(_162_));
 sky130_fd_sc_hd__xnor2_1 _345_ (.A(_058_),
    .B(_162_),
    .Y(net94));
 sky130_fd_sc_hd__xnor2_1 _346_ (.A(_068_),
    .B(_070_),
    .Y(net95));
 sky130_fd_sc_hd__o32a_1 _347_ (.A1(_058_),
    .A2(_068_),
    .A3(_069_),
    .B1(_072_),
    .B2(_073_),
    .X(_163_));
 sky130_fd_sc_hd__nor2_1 _348_ (.A(_074_),
    .B(_163_),
    .Y(net96));
 sky130_fd_sc_hd__or3_1 _349_ (.A(_038_),
    .B(_074_),
    .C(_076_),
    .X(_164_));
 sky130_fd_sc_hd__and2_1 _350_ (.A(_077_),
    .B(_164_),
    .X(net97));
 sky130_fd_sc_hd__nand2_1 _351_ (.A(_035_),
    .B(_077_),
    .Y(_165_));
 sky130_fd_sc_hd__xnor2_1 _352_ (.A(_083_),
    .B(_165_),
    .Y(net98));
 sky130_fd_sc_hd__o21bai_1 _353_ (.A1(_077_),
    .A2(_083_),
    .B1_N(_088_),
    .Y(_166_));
 sky130_fd_sc_hd__and2_1 _354_ (.A(_089_),
    .B(_166_),
    .X(net68));
 sky130_fd_sc_hd__xnor2_1 _355_ (.A(_089_),
    .B(_091_),
    .Y(net69));
 sky130_fd_sc_hd__xnor2_1 _356_ (.A(_094_),
    .B(_096_),
    .Y(net70));
 sky130_fd_sc_hd__nand2b_1 _357_ (.A_N(_030_),
    .B(_098_),
    .Y(_167_));
 sky130_fd_sc_hd__xnor2_1 _358_ (.A(_034_),
    .B(_167_),
    .Y(net71));
 sky130_fd_sc_hd__o21a_1 _359_ (.A1(_034_),
    .A2(_098_),
    .B1(_033_),
    .X(_168_));
 sky130_fd_sc_hd__nor2_1 _360_ (.A(_099_),
    .B(_168_),
    .Y(net72));
 sky130_fd_sc_hd__xnor2_1 _361_ (.A(_099_),
    .B(_104_),
    .Y(net73));
 sky130_fd_sc_hd__xnor2_1 _362_ (.A(_107_),
    .B(_109_),
    .Y(net74));
 sky130_fd_sc_hd__o21ba_1 _363_ (.A1(_107_),
    .A2(_108_),
    .B1_N(_022_),
    .X(_169_));
 sky130_fd_sc_hd__xor2_1 _364_ (.A(_026_),
    .B(_169_),
    .X(net75));
 sky130_fd_sc_hd__xor2_1 _365_ (.A(_025_),
    .B(_110_),
    .X(net76));
 sky130_fd_sc_hd__nand2_1 _366_ (.A(_111_),
    .B(_116_),
    .Y(_170_));
 sky130_fd_sc_hd__and2_1 _367_ (.A(_117_),
    .B(_170_),
    .X(net77));
 sky130_fd_sc_hd__xnor2_1 _368_ (.A(_119_),
    .B(_121_),
    .Y(net79));
 sky130_fd_sc_hd__nand2b_1 _369_ (.A_N(_012_),
    .B(_123_),
    .Y(_171_));
 sky130_fd_sc_hd__xnor2_1 _370_ (.A(_016_),
    .B(_171_),
    .Y(net80));
 sky130_fd_sc_hd__o21ai_1 _371_ (.A1(_016_),
    .A2(_123_),
    .B1(_015_),
    .Y(_172_));
 sky130_fd_sc_hd__and2_1 _372_ (.A(_124_),
    .B(_172_),
    .X(net81));
 sky130_fd_sc_hd__xor2_1 _373_ (.A(_124_),
    .B(_129_),
    .X(net82));
 sky130_fd_sc_hd__xnor2_1 _374_ (.A(_131_),
    .B(_133_),
    .Y(net83));
 sky130_fd_sc_hd__o21ba_1 _375_ (.A1(_131_),
    .A2(_132_),
    .B1_N(_004_),
    .X(_173_));
 sky130_fd_sc_hd__xor2_1 _376_ (.A(_008_),
    .B(_173_),
    .X(net84));
 sky130_fd_sc_hd__xor2_1 _377_ (.A(_007_),
    .B(_134_),
    .X(net85));
 sky130_fd_sc_hd__xor2_1 _378_ (.A(_135_),
    .B(_140_),
    .X(net86));
 sky130_fd_sc_hd__xor2_1 _379_ (.A(_142_),
    .B(_145_),
    .X(net87));
 sky130_fd_sc_hd__a21oi_1 _380_ (.A1(_142_),
    .A2(_145_),
    .B1(_143_),
    .Y(_174_));
 sky130_fd_sc_hd__xnor2_1 _381_ (.A(_148_),
    .B(_174_),
    .Y(net88));
 sky130_fd_sc_hd__a31o_1 _382_ (.A1(_142_),
    .A2(_145_),
    .A3(_148_),
    .B1(_153_),
    .X(_175_));
 sky130_fd_sc_hd__and2_1 _383_ (.A(_154_),
    .B(_175_),
    .X(net90));
 sky130_fd_sc_hd__xor2_1 _384_ (.A(_154_),
    .B(_159_),
    .X(net91));
 sky130_fd_sc_hd__xnor2_1 _385_ (.A(net65),
    .B(_046_),
    .Y(net67));
 sky130_fd_sc_hd__xnor2_1 _386_ (.A(_047_),
    .B(_049_),
    .Y(net78));
 sky130_fd_sc_hd__xor2_1 _387_ (.A(_042_),
    .B(_050_),
    .X(net89));
 sky130_fd_sc_hd__a22o_1 _388_ (.A1(_040_),
    .A2(_051_),
    .B1(_052_),
    .B2(_039_),
    .X(_176_));
 sky130_fd_sc_hd__nand4_1 _389_ (.A(_039_),
    .B(_040_),
    .C(_051_),
    .D(_052_),
    .Y(_177_));
 sky130_fd_sc_hd__nand2_1 _390_ (.A(_176_),
    .B(_177_),
    .Y(net92));
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(a[0]),
    .X(net1));
 sky130_fd_sc_hd__buf_1 input2 (.A(a[10]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(a[11]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(a[12]),
    .X(net4));
 sky130_fd_sc_hd__dlymetal6s2s_1 input5 (.A(a[13]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 input6 (.A(a[14]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(a[15]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 input8 (.A(a[16]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_1 input9 (.A(a[17]),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_1 input10 (.A(a[18]),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_1 input11 (.A(a[19]),
    .X(net11));
 sky130_fd_sc_hd__clkbuf_1 input12 (.A(a[1]),
    .X(net12));
 sky130_fd_sc_hd__clkbuf_1 input13 (.A(a[20]),
    .X(net13));
 sky130_fd_sc_hd__buf_1 input14 (.A(a[21]),
    .X(net14));
 sky130_fd_sc_hd__clkbuf_1 input15 (.A(a[22]),
    .X(net15));
 sky130_fd_sc_hd__clkbuf_1 input16 (.A(a[23]),
    .X(net16));
 sky130_fd_sc_hd__clkbuf_1 input17 (.A(a[24]),
    .X(net17));
 sky130_fd_sc_hd__clkbuf_1 input18 (.A(a[25]),
    .X(net18));
 sky130_fd_sc_hd__clkbuf_1 input19 (.A(a[26]),
    .X(net19));
 sky130_fd_sc_hd__clkbuf_1 input20 (.A(a[27]),
    .X(net20));
 sky130_fd_sc_hd__clkbuf_1 input21 (.A(a[28]),
    .X(net21));
 sky130_fd_sc_hd__clkbuf_1 input22 (.A(a[29]),
    .X(net22));
 sky130_fd_sc_hd__clkbuf_1 input23 (.A(a[2]),
    .X(net23));
 sky130_fd_sc_hd__clkbuf_1 input24 (.A(a[30]),
    .X(net24));
 sky130_fd_sc_hd__clkbuf_1 input25 (.A(a[31]),
    .X(net25));
 sky130_fd_sc_hd__buf_1 input26 (.A(a[3]),
    .X(net26));
 sky130_fd_sc_hd__clkbuf_1 input27 (.A(a[4]),
    .X(net27));
 sky130_fd_sc_hd__clkbuf_1 input28 (.A(a[5]),
    .X(net28));
 sky130_fd_sc_hd__buf_1 input29 (.A(a[6]),
    .X(net29));
 sky130_fd_sc_hd__buf_1 input30 (.A(a[7]),
    .X(net30));
 sky130_fd_sc_hd__clkbuf_1 input31 (.A(a[8]),
    .X(net31));
 sky130_fd_sc_hd__clkbuf_1 input32 (.A(a[9]),
    .X(net32));
 sky130_fd_sc_hd__clkbuf_1 input33 (.A(b[0]),
    .X(net33));
 sky130_fd_sc_hd__buf_1 input34 (.A(b[10]),
    .X(net34));
 sky130_fd_sc_hd__clkbuf_1 input35 (.A(b[11]),
    .X(net35));
 sky130_fd_sc_hd__clkbuf_1 input36 (.A(b[12]),
    .X(net36));
 sky130_fd_sc_hd__buf_1 input37 (.A(b[13]),
    .X(net37));
 sky130_fd_sc_hd__clkbuf_1 input38 (.A(b[14]),
    .X(net38));
 sky130_fd_sc_hd__clkbuf_1 input39 (.A(b[15]),
    .X(net39));
 sky130_fd_sc_hd__clkbuf_1 input40 (.A(b[16]),
    .X(net40));
 sky130_fd_sc_hd__clkbuf_1 input41 (.A(b[17]),
    .X(net41));
 sky130_fd_sc_hd__clkbuf_1 input42 (.A(b[18]),
    .X(net42));
 sky130_fd_sc_hd__clkbuf_1 input43 (.A(b[19]),
    .X(net43));
 sky130_fd_sc_hd__clkbuf_1 input44 (.A(b[1]),
    .X(net44));
 sky130_fd_sc_hd__clkbuf_1 input45 (.A(b[20]),
    .X(net45));
 sky130_fd_sc_hd__buf_1 input46 (.A(b[21]),
    .X(net46));
 sky130_fd_sc_hd__clkbuf_1 input47 (.A(b[22]),
    .X(net47));
 sky130_fd_sc_hd__clkbuf_1 input48 (.A(b[23]),
    .X(net48));
 sky130_fd_sc_hd__clkbuf_1 input49 (.A(b[24]),
    .X(net49));
 sky130_fd_sc_hd__clkbuf_1 input50 (.A(b[25]),
    .X(net50));
 sky130_fd_sc_hd__clkbuf_1 input51 (.A(b[26]),
    .X(net51));
 sky130_fd_sc_hd__clkbuf_1 input52 (.A(b[27]),
    .X(net52));
 sky130_fd_sc_hd__clkbuf_1 input53 (.A(b[28]),
    .X(net53));
 sky130_fd_sc_hd__clkbuf_1 input54 (.A(b[29]),
    .X(net54));
 sky130_fd_sc_hd__clkbuf_1 input55 (.A(b[2]),
    .X(net55));
 sky130_fd_sc_hd__clkbuf_1 input56 (.A(b[30]),
    .X(net56));
 sky130_fd_sc_hd__clkbuf_1 input57 (.A(b[31]),
    .X(net57));
 sky130_fd_sc_hd__clkbuf_1 input58 (.A(b[3]),
    .X(net58));
 sky130_fd_sc_hd__clkbuf_1 input59 (.A(b[4]),
    .X(net59));
 sky130_fd_sc_hd__clkbuf_1 input60 (.A(b[5]),
    .X(net60));
 sky130_fd_sc_hd__buf_1 input61 (.A(b[6]),
    .X(net61));
 sky130_fd_sc_hd__buf_1 input62 (.A(b[7]),
    .X(net62));
 sky130_fd_sc_hd__clkbuf_1 input63 (.A(b[8]),
    .X(net63));
 sky130_fd_sc_hd__clkbuf_1 input64 (.A(b[9]),
    .X(net64));
 sky130_fd_sc_hd__buf_1 input65 (.A(cin),
    .X(net65));
 sky130_fd_sc_hd__clkbuf_16 output66 (.A(net66),
    .X(cout));
 sky130_fd_sc_hd__clkbuf_16 output67 (.A(net67),
    .X(sum[0]));
 sky130_fd_sc_hd__clkbuf_16 output68 (.A(net68),
    .X(sum[10]));
 sky130_fd_sc_hd__clkbuf_16 output69 (.A(net69),
    .X(sum[11]));
 sky130_fd_sc_hd__clkbuf_16 output70 (.A(net70),
    .X(sum[12]));
 sky130_fd_sc_hd__clkbuf_16 output71 (.A(net71),
    .X(sum[13]));
 sky130_fd_sc_hd__clkbuf_16 output72 (.A(net72),
    .X(sum[14]));
 sky130_fd_sc_hd__clkbuf_16 output73 (.A(net73),
    .X(sum[15]));
 sky130_fd_sc_hd__clkbuf_16 output74 (.A(net74),
    .X(sum[16]));
 sky130_fd_sc_hd__clkbuf_16 output75 (.A(net75),
    .X(sum[17]));
 sky130_fd_sc_hd__clkbuf_16 output76 (.A(net76),
    .X(sum[18]));
 sky130_fd_sc_hd__clkbuf_16 output77 (.A(net77),
    .X(sum[19]));
 sky130_fd_sc_hd__clkbuf_16 output78 (.A(net78),
    .X(sum[1]));
 sky130_fd_sc_hd__clkbuf_16 output79 (.A(net79),
    .X(sum[20]));
 sky130_fd_sc_hd__clkbuf_16 output80 (.A(net80),
    .X(sum[21]));
 sky130_fd_sc_hd__clkbuf_16 output81 (.A(net81),
    .X(sum[22]));
 sky130_fd_sc_hd__clkbuf_16 output82 (.A(net82),
    .X(sum[23]));
 sky130_fd_sc_hd__clkbuf_16 output83 (.A(net83),
    .X(sum[24]));
 sky130_fd_sc_hd__clkbuf_16 output84 (.A(net84),
    .X(sum[25]));
 sky130_fd_sc_hd__clkbuf_16 output85 (.A(net85),
    .X(sum[26]));
 sky130_fd_sc_hd__clkbuf_16 output86 (.A(net86),
    .X(sum[27]));
 sky130_fd_sc_hd__clkbuf_16 output87 (.A(net87),
    .X(sum[28]));
 sky130_fd_sc_hd__clkbuf_16 output88 (.A(net88),
    .X(sum[29]));
 sky130_fd_sc_hd__clkbuf_16 output89 (.A(net89),
    .X(sum[2]));
 sky130_fd_sc_hd__clkbuf_16 output90 (.A(net90),
    .X(sum[30]));
 sky130_fd_sc_hd__clkbuf_16 output91 (.A(net91),
    .X(sum[31]));
 sky130_fd_sc_hd__clkbuf_16 output92 (.A(net92),
    .X(sum[3]));
 sky130_fd_sc_hd__clkbuf_16 output93 (.A(net93),
    .X(sum[4]));
 sky130_fd_sc_hd__clkbuf_16 output94 (.A(net94),
    .X(sum[5]));
 sky130_fd_sc_hd__clkbuf_16 output95 (.A(net95),
    .X(sum[6]));
 sky130_fd_sc_hd__clkbuf_16 output96 (.A(net96),
    .X(sum[7]));
 sky130_fd_sc_hd__clkbuf_16 output97 (.A(net97),
    .X(sum[8]));
 sky130_fd_sc_hd__clkbuf_16 output98 (.A(net98),
    .X(sum[9]));
endmodule

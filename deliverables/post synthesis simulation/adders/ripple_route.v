module ripple_carry_route (cin,
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
 wire \ripple_adders[0].fa.sum ;
 wire \ripple_adders[10].fa.sum ;
 wire \ripple_adders[11].fa.sum ;
 wire \ripple_adders[12].fa.sum ;
 wire \ripple_adders[13].fa.sum ;
 wire \ripple_adders[14].fa.sum ;
 wire \ripple_adders[15].fa.sum ;
 wire \ripple_adders[16].fa.sum ;
 wire \ripple_adders[17].fa.sum ;
 wire \ripple_adders[18].fa.sum ;
 wire \ripple_adders[19].fa.sum ;
 wire \ripple_adders[1].fa.sum ;
 wire \ripple_adders[20].fa.sum ;
 wire \ripple_adders[21].fa.sum ;
 wire \ripple_adders[22].fa.sum ;
 wire \ripple_adders[23].fa.sum ;
 wire \ripple_adders[24].fa.sum ;
 wire \ripple_adders[25].fa.sum ;
 wire \ripple_adders[26].fa.sum ;
 wire \ripple_adders[27].fa.sum ;
 wire \ripple_adders[28].fa.sum ;
 wire \ripple_adders[29].fa.sum ;
 wire \ripple_adders[2].fa.sum ;
 wire \ripple_adders[30].fa.sum ;
 wire \ripple_adders[31].fa.sum ;
 wire \ripple_adders[3].fa.sum ;
 wire \ripple_adders[4].fa.sum ;
 wire \ripple_adders[5].fa.sum ;
 wire \ripple_adders[6].fa.sum ;
 wire \ripple_adders[7].fa.sum ;
 wire \ripple_adders[8].fa.sum ;
 wire \ripple_adders[9].fa.sum ;
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

 sky130_fd_sc_hd__or2_1 _127_ (.A(net33),
    .B(net1),
    .X(_126_));
 sky130_fd_sc_hd__nand2_1 _128_ (.A(net33),
    .B(net1),
    .Y(_000_));
 sky130_fd_sc_hd__nand2_1 _129_ (.A(_126_),
    .B(_000_),
    .Y(_001_));
 sky130_fd_sc_hd__xnor2_1 _130_ (.A(net65),
    .B(_001_),
    .Y(\ripple_adders[0].fa.sum ));
 sky130_fd_sc_hd__a21bo_1 _131_ (.A1(net65),
    .A2(_126_),
    .B1_N(_000_),
    .X(_002_));
 sky130_fd_sc_hd__or2_1 _132_ (.A(net44),
    .B(net12),
    .X(_003_));
 sky130_fd_sc_hd__nand2_1 _133_ (.A(net44),
    .B(net12),
    .Y(_004_));
 sky130_fd_sc_hd__nand2_1 _134_ (.A(_003_),
    .B(_004_),
    .Y(_005_));
 sky130_fd_sc_hd__xnor2_1 _135_ (.A(_002_),
    .B(_005_),
    .Y(\ripple_adders[1].fa.sum ));
 sky130_fd_sc_hd__a21bo_1 _136_ (.A1(_002_),
    .A2(_003_),
    .B1_N(_004_),
    .X(_006_));
 sky130_fd_sc_hd__or2_1 _137_ (.A(net55),
    .B(net23),
    .X(_007_));
 sky130_fd_sc_hd__nand2_1 _138_ (.A(net55),
    .B(net23),
    .Y(_008_));
 sky130_fd_sc_hd__nand2_1 _139_ (.A(_007_),
    .B(_008_),
    .Y(_009_));
 sky130_fd_sc_hd__xnor2_1 _140_ (.A(_006_),
    .B(_009_),
    .Y(\ripple_adders[2].fa.sum ));
 sky130_fd_sc_hd__or2_1 _141_ (.A(net58),
    .B(net26),
    .X(_010_));
 sky130_fd_sc_hd__nand2_1 _142_ (.A(net58),
    .B(net26),
    .Y(_011_));
 sky130_fd_sc_hd__nand2_1 _143_ (.A(_010_),
    .B(_011_),
    .Y(_012_));
 sky130_fd_sc_hd__a21bo_1 _144_ (.A1(_006_),
    .A2(_007_),
    .B1_N(_008_),
    .X(_013_));
 sky130_fd_sc_hd__xnor2_1 _145_ (.A(_012_),
    .B(_013_),
    .Y(\ripple_adders[3].fa.sum ));
 sky130_fd_sc_hd__or2_1 _146_ (.A(net59),
    .B(net27),
    .X(_014_));
 sky130_fd_sc_hd__nand2_1 _147_ (.A(net59),
    .B(net27),
    .Y(_015_));
 sky130_fd_sc_hd__nand2_1 _148_ (.A(_014_),
    .B(_015_),
    .Y(_016_));
 sky130_fd_sc_hd__a21bo_1 _149_ (.A1(_010_),
    .A2(_013_),
    .B1_N(_011_),
    .X(_017_));
 sky130_fd_sc_hd__xnor2_1 _150_ (.A(_016_),
    .B(_017_),
    .Y(\ripple_adders[4].fa.sum ));
 sky130_fd_sc_hd__or2_1 _151_ (.A(net60),
    .B(net28),
    .X(_018_));
 sky130_fd_sc_hd__nand2_1 _152_ (.A(net60),
    .B(net28),
    .Y(_019_));
 sky130_fd_sc_hd__nand2_1 _153_ (.A(_018_),
    .B(_019_),
    .Y(_020_));
 sky130_fd_sc_hd__a21bo_1 _154_ (.A1(_014_),
    .A2(_017_),
    .B1_N(_015_),
    .X(_021_));
 sky130_fd_sc_hd__xnor2_1 _155_ (.A(_020_),
    .B(_021_),
    .Y(\ripple_adders[5].fa.sum ));
 sky130_fd_sc_hd__or2_1 _156_ (.A(net61),
    .B(net29),
    .X(_022_));
 sky130_fd_sc_hd__nand2_1 _157_ (.A(net61),
    .B(net29),
    .Y(_023_));
 sky130_fd_sc_hd__nand2_1 _158_ (.A(_022_),
    .B(_023_),
    .Y(_024_));
 sky130_fd_sc_hd__a21bo_1 _159_ (.A1(_018_),
    .A2(_021_),
    .B1_N(_019_),
    .X(_025_));
 sky130_fd_sc_hd__xnor2_1 _160_ (.A(_024_),
    .B(_025_),
    .Y(\ripple_adders[6].fa.sum ));
 sky130_fd_sc_hd__or2_1 _161_ (.A(net62),
    .B(net30),
    .X(_026_));
 sky130_fd_sc_hd__nand2_1 _162_ (.A(net62),
    .B(net30),
    .Y(_027_));
 sky130_fd_sc_hd__nand2_1 _163_ (.A(_026_),
    .B(_027_),
    .Y(_028_));
 sky130_fd_sc_hd__a21bo_1 _164_ (.A1(_022_),
    .A2(_025_),
    .B1_N(_023_),
    .X(_029_));
 sky130_fd_sc_hd__xnor2_1 _165_ (.A(_028_),
    .B(_029_),
    .Y(\ripple_adders[7].fa.sum ));
 sky130_fd_sc_hd__or2_1 _166_ (.A(net63),
    .B(net31),
    .X(_030_));
 sky130_fd_sc_hd__nand2_1 _167_ (.A(net63),
    .B(net31),
    .Y(_031_));
 sky130_fd_sc_hd__nand2_1 _168_ (.A(_030_),
    .B(_031_),
    .Y(_032_));
 sky130_fd_sc_hd__a21bo_1 _169_ (.A1(_026_),
    .A2(_029_),
    .B1_N(_027_),
    .X(_033_));
 sky130_fd_sc_hd__xnor2_1 _170_ (.A(_032_),
    .B(_033_),
    .Y(\ripple_adders[8].fa.sum ));
 sky130_fd_sc_hd__or2_1 _171_ (.A(net64),
    .B(net32),
    .X(_034_));
 sky130_fd_sc_hd__nand2_1 _172_ (.A(net64),
    .B(net32),
    .Y(_035_));
 sky130_fd_sc_hd__nand2_1 _173_ (.A(_034_),
    .B(_035_),
    .Y(_036_));
 sky130_fd_sc_hd__a21bo_1 _174_ (.A1(_030_),
    .A2(_033_),
    .B1_N(_031_),
    .X(_037_));
 sky130_fd_sc_hd__xnor2_1 _175_ (.A(_036_),
    .B(_037_),
    .Y(\ripple_adders[9].fa.sum ));
 sky130_fd_sc_hd__or2_1 _176_ (.A(net34),
    .B(net2),
    .X(_038_));
 sky130_fd_sc_hd__nand2_1 _177_ (.A(net34),
    .B(net2),
    .Y(_039_));
 sky130_fd_sc_hd__nand2_1 _178_ (.A(_038_),
    .B(_039_),
    .Y(_040_));
 sky130_fd_sc_hd__a21bo_1 _179_ (.A1(_034_),
    .A2(_037_),
    .B1_N(_035_),
    .X(_041_));
 sky130_fd_sc_hd__xnor2_1 _180_ (.A(_040_),
    .B(_041_),
    .Y(\ripple_adders[10].fa.sum ));
 sky130_fd_sc_hd__or2_1 _181_ (.A(net35),
    .B(net3),
    .X(_042_));
 sky130_fd_sc_hd__nand2_1 _182_ (.A(net35),
    .B(net3),
    .Y(_043_));
 sky130_fd_sc_hd__nand2_1 _183_ (.A(_042_),
    .B(_043_),
    .Y(_044_));
 sky130_fd_sc_hd__a21bo_1 _184_ (.A1(_038_),
    .A2(_041_),
    .B1_N(_039_),
    .X(_045_));
 sky130_fd_sc_hd__xnor2_1 _185_ (.A(_044_),
    .B(_045_),
    .Y(\ripple_adders[11].fa.sum ));
 sky130_fd_sc_hd__or2_1 _186_ (.A(net36),
    .B(net4),
    .X(_046_));
 sky130_fd_sc_hd__nand2_1 _187_ (.A(net36),
    .B(net4),
    .Y(_047_));
 sky130_fd_sc_hd__nand2_1 _188_ (.A(_046_),
    .B(_047_),
    .Y(_048_));
 sky130_fd_sc_hd__a21bo_1 _189_ (.A1(_042_),
    .A2(_045_),
    .B1_N(_043_),
    .X(_049_));
 sky130_fd_sc_hd__xnor2_1 _190_ (.A(_048_),
    .B(_049_),
    .Y(\ripple_adders[12].fa.sum ));
 sky130_fd_sc_hd__or2_1 _191_ (.A(net37),
    .B(net5),
    .X(_050_));
 sky130_fd_sc_hd__nand2_1 _192_ (.A(net37),
    .B(net5),
    .Y(_051_));
 sky130_fd_sc_hd__nand2_1 _193_ (.A(_050_),
    .B(_051_),
    .Y(_052_));
 sky130_fd_sc_hd__a21bo_1 _194_ (.A1(_046_),
    .A2(_049_),
    .B1_N(_047_),
    .X(_053_));
 sky130_fd_sc_hd__xnor2_1 _195_ (.A(_052_),
    .B(_053_),
    .Y(\ripple_adders[13].fa.sum ));
 sky130_fd_sc_hd__or2_1 _196_ (.A(net38),
    .B(net6),
    .X(_054_));
 sky130_fd_sc_hd__nand2_1 _197_ (.A(net38),
    .B(net6),
    .Y(_055_));
 sky130_fd_sc_hd__nand2_1 _198_ (.A(_054_),
    .B(_055_),
    .Y(_056_));
 sky130_fd_sc_hd__a21bo_1 _199_ (.A1(_050_),
    .A2(_053_),
    .B1_N(_051_),
    .X(_057_));
 sky130_fd_sc_hd__xnor2_1 _200_ (.A(_056_),
    .B(_057_),
    .Y(\ripple_adders[14].fa.sum ));
 sky130_fd_sc_hd__or2_1 _201_ (.A(net39),
    .B(net7),
    .X(_058_));
 sky130_fd_sc_hd__nand2_1 _202_ (.A(net39),
    .B(net7),
    .Y(_059_));
 sky130_fd_sc_hd__nand2_1 _203_ (.A(_058_),
    .B(_059_),
    .Y(_060_));
 sky130_fd_sc_hd__a21bo_1 _204_ (.A1(_054_),
    .A2(_057_),
    .B1_N(_055_),
    .X(_061_));
 sky130_fd_sc_hd__xnor2_1 _205_ (.A(_060_),
    .B(_061_),
    .Y(\ripple_adders[15].fa.sum ));
 sky130_fd_sc_hd__or2_1 _206_ (.A(net40),
    .B(net8),
    .X(_062_));
 sky130_fd_sc_hd__nand2_1 _207_ (.A(net40),
    .B(net8),
    .Y(_063_));
 sky130_fd_sc_hd__nand2_1 _208_ (.A(_062_),
    .B(_063_),
    .Y(_064_));
 sky130_fd_sc_hd__a21bo_1 _209_ (.A1(_058_),
    .A2(_061_),
    .B1_N(_059_),
    .X(_065_));
 sky130_fd_sc_hd__xnor2_1 _210_ (.A(_064_),
    .B(_065_),
    .Y(\ripple_adders[16].fa.sum ));
 sky130_fd_sc_hd__or2_1 _211_ (.A(net41),
    .B(net9),
    .X(_066_));
 sky130_fd_sc_hd__nand2_1 _212_ (.A(net41),
    .B(net9),
    .Y(_067_));
 sky130_fd_sc_hd__nand2_1 _213_ (.A(_066_),
    .B(_067_),
    .Y(_068_));
 sky130_fd_sc_hd__a21bo_1 _214_ (.A1(_062_),
    .A2(_065_),
    .B1_N(_063_),
    .X(_069_));
 sky130_fd_sc_hd__xnor2_1 _215_ (.A(_068_),
    .B(_069_),
    .Y(\ripple_adders[17].fa.sum ));
 sky130_fd_sc_hd__or2_1 _216_ (.A(net42),
    .B(net10),
    .X(_070_));
 sky130_fd_sc_hd__nand2_1 _217_ (.A(net42),
    .B(net10),
    .Y(_071_));
 sky130_fd_sc_hd__nand2_1 _218_ (.A(_070_),
    .B(_071_),
    .Y(_072_));
 sky130_fd_sc_hd__a21bo_1 _219_ (.A1(_066_),
    .A2(_069_),
    .B1_N(_067_),
    .X(_073_));
 sky130_fd_sc_hd__xnor2_1 _220_ (.A(_072_),
    .B(_073_),
    .Y(\ripple_adders[18].fa.sum ));
 sky130_fd_sc_hd__or2_1 _221_ (.A(net43),
    .B(net11),
    .X(_074_));
 sky130_fd_sc_hd__nand2_1 _222_ (.A(net43),
    .B(net11),
    .Y(_075_));
 sky130_fd_sc_hd__nand2_1 _223_ (.A(_074_),
    .B(_075_),
    .Y(_076_));
 sky130_fd_sc_hd__a21bo_1 _224_ (.A1(_070_),
    .A2(_073_),
    .B1_N(_071_),
    .X(_077_));
 sky130_fd_sc_hd__xnor2_1 _225_ (.A(_076_),
    .B(_077_),
    .Y(\ripple_adders[19].fa.sum ));
 sky130_fd_sc_hd__or2_1 _226_ (.A(net45),
    .B(net13),
    .X(_078_));
 sky130_fd_sc_hd__nand2_1 _227_ (.A(net45),
    .B(net13),
    .Y(_079_));
 sky130_fd_sc_hd__nand2_1 _228_ (.A(_078_),
    .B(_079_),
    .Y(_080_));
 sky130_fd_sc_hd__a21bo_1 _229_ (.A1(_074_),
    .A2(_077_),
    .B1_N(_075_),
    .X(_081_));
 sky130_fd_sc_hd__xnor2_1 _230_ (.A(_080_),
    .B(_081_),
    .Y(\ripple_adders[20].fa.sum ));
 sky130_fd_sc_hd__or2_1 _231_ (.A(net46),
    .B(net14),
    .X(_082_));
 sky130_fd_sc_hd__nand2_1 _232_ (.A(net46),
    .B(net14),
    .Y(_083_));
 sky130_fd_sc_hd__nand2_1 _233_ (.A(_082_),
    .B(_083_),
    .Y(_084_));
 sky130_fd_sc_hd__a21bo_1 _234_ (.A1(_078_),
    .A2(_081_),
    .B1_N(_079_),
    .X(_085_));
 sky130_fd_sc_hd__xnor2_1 _235_ (.A(_084_),
    .B(_085_),
    .Y(\ripple_adders[21].fa.sum ));
 sky130_fd_sc_hd__or2_1 _236_ (.A(net47),
    .B(net15),
    .X(_086_));
 sky130_fd_sc_hd__nand2_1 _237_ (.A(net47),
    .B(net15),
    .Y(_087_));
 sky130_fd_sc_hd__nand2_1 _238_ (.A(_086_),
    .B(_087_),
    .Y(_088_));
 sky130_fd_sc_hd__a21bo_1 _239_ (.A1(_082_),
    .A2(_085_),
    .B1_N(_083_),
    .X(_089_));
 sky130_fd_sc_hd__xnor2_1 _240_ (.A(_088_),
    .B(_089_),
    .Y(\ripple_adders[22].fa.sum ));
 sky130_fd_sc_hd__or2_1 _241_ (.A(net48),
    .B(net16),
    .X(_090_));
 sky130_fd_sc_hd__nand2_1 _242_ (.A(net48),
    .B(net16),
    .Y(_091_));
 sky130_fd_sc_hd__nand2_1 _243_ (.A(_090_),
    .B(_091_),
    .Y(_092_));
 sky130_fd_sc_hd__a21bo_1 _244_ (.A1(_086_),
    .A2(_089_),
    .B1_N(_087_),
    .X(_093_));
 sky130_fd_sc_hd__xnor2_1 _245_ (.A(_092_),
    .B(_093_),
    .Y(\ripple_adders[23].fa.sum ));
 sky130_fd_sc_hd__or2_1 _246_ (.A(net49),
    .B(net17),
    .X(_094_));
 sky130_fd_sc_hd__nand2_1 _247_ (.A(net49),
    .B(net17),
    .Y(_095_));
 sky130_fd_sc_hd__nand2_1 _248_ (.A(_094_),
    .B(_095_),
    .Y(_096_));
 sky130_fd_sc_hd__a21bo_1 _249_ (.A1(_090_),
    .A2(_093_),
    .B1_N(_091_),
    .X(_097_));
 sky130_fd_sc_hd__xnor2_1 _250_ (.A(_096_),
    .B(_097_),
    .Y(\ripple_adders[24].fa.sum ));
 sky130_fd_sc_hd__or2_1 _251_ (.A(net50),
    .B(net18),
    .X(_098_));
 sky130_fd_sc_hd__nand2_1 _252_ (.A(net50),
    .B(net18),
    .Y(_099_));
 sky130_fd_sc_hd__nand2_1 _253_ (.A(_098_),
    .B(_099_),
    .Y(_100_));
 sky130_fd_sc_hd__a21bo_1 _254_ (.A1(_094_),
    .A2(_097_),
    .B1_N(_095_),
    .X(_101_));
 sky130_fd_sc_hd__xnor2_1 _255_ (.A(_100_),
    .B(_101_),
    .Y(\ripple_adders[25].fa.sum ));
 sky130_fd_sc_hd__or2_1 _256_ (.A(net51),
    .B(net19),
    .X(_102_));
 sky130_fd_sc_hd__nand2_1 _257_ (.A(net51),
    .B(net19),
    .Y(_103_));
 sky130_fd_sc_hd__nand2_1 _258_ (.A(_102_),
    .B(_103_),
    .Y(_104_));
 sky130_fd_sc_hd__a21bo_1 _259_ (.A1(_098_),
    .A2(_101_),
    .B1_N(_099_),
    .X(_105_));
 sky130_fd_sc_hd__xnor2_1 _260_ (.A(_104_),
    .B(_105_),
    .Y(\ripple_adders[26].fa.sum ));
 sky130_fd_sc_hd__or2_1 _261_ (.A(net52),
    .B(net20),
    .X(_106_));
 sky130_fd_sc_hd__nand2_1 _262_ (.A(net52),
    .B(net20),
    .Y(_107_));
 sky130_fd_sc_hd__nand2_1 _263_ (.A(_106_),
    .B(_107_),
    .Y(_108_));
 sky130_fd_sc_hd__a21bo_1 _264_ (.A1(_102_),
    .A2(_105_),
    .B1_N(_103_),
    .X(_109_));
 sky130_fd_sc_hd__xnor2_1 _265_ (.A(_108_),
    .B(_109_),
    .Y(\ripple_adders[27].fa.sum ));
 sky130_fd_sc_hd__or2_1 _266_ (.A(net53),
    .B(net21),
    .X(_110_));
 sky130_fd_sc_hd__nand2_1 _267_ (.A(net53),
    .B(net21),
    .Y(_111_));
 sky130_fd_sc_hd__nand2_1 _268_ (.A(_110_),
    .B(_111_),
    .Y(_112_));
 sky130_fd_sc_hd__a21bo_1 _269_ (.A1(_106_),
    .A2(_109_),
    .B1_N(_107_),
    .X(_113_));
 sky130_fd_sc_hd__xnor2_1 _270_ (.A(_112_),
    .B(_113_),
    .Y(\ripple_adders[28].fa.sum ));
 sky130_fd_sc_hd__or2_1 _271_ (.A(net54),
    .B(net22),
    .X(_114_));
 sky130_fd_sc_hd__nand2_1 _272_ (.A(net54),
    .B(net22),
    .Y(_115_));
 sky130_fd_sc_hd__nand2_1 _273_ (.A(_114_),
    .B(_115_),
    .Y(_116_));
 sky130_fd_sc_hd__a21bo_1 _274_ (.A1(_110_),
    .A2(_113_),
    .B1_N(_111_),
    .X(_117_));
 sky130_fd_sc_hd__xnor2_1 _275_ (.A(_116_),
    .B(_117_),
    .Y(\ripple_adders[29].fa.sum ));
 sky130_fd_sc_hd__or2_1 _276_ (.A(net56),
    .B(net24),
    .X(_118_));
 sky130_fd_sc_hd__nand2_1 _277_ (.A(net56),
    .B(net24),
    .Y(_119_));
 sky130_fd_sc_hd__nand2_1 _278_ (.A(_118_),
    .B(_119_),
    .Y(_120_));
 sky130_fd_sc_hd__a21bo_1 _279_ (.A1(_114_),
    .A2(_117_),
    .B1_N(_115_),
    .X(_121_));
 sky130_fd_sc_hd__xnor2_1 _280_ (.A(_120_),
    .B(_121_),
    .Y(\ripple_adders[30].fa.sum ));
 sky130_fd_sc_hd__and2_1 _281_ (.A(net57),
    .B(net25),
    .X(_122_));
 sky130_fd_sc_hd__a21boi_1 _282_ (.A1(_118_),
    .A2(_121_),
    .B1_N(_119_),
    .Y(_123_));
 sky130_fd_sc_hd__nor2_1 _283_ (.A(net57),
    .B(net25),
    .Y(_124_));
 sky130_fd_sc_hd__nor2_1 _284_ (.A(_122_),
    .B(_124_),
    .Y(_125_));
 sky130_fd_sc_hd__o21bai_1 _285_ (.A1(_123_),
    .A2(_124_),
    .B1_N(_122_),
    .Y(net66));
 sky130_fd_sc_hd__xnor2_1 _286_ (.A(_123_),
    .B(_125_),
    .Y(\ripple_adders[31].fa.sum ));
 sky130_fd_sc_hd__buf_1 _287_ (.A(\ripple_adders[0].fa.sum ),
    .X(net67));
 sky130_fd_sc_hd__buf_1 _288_ (.A(\ripple_adders[1].fa.sum ),
    .X(net78));
 sky130_fd_sc_hd__buf_1 _289_ (.A(\ripple_adders[2].fa.sum ),
    .X(net89));
 sky130_fd_sc_hd__buf_1 _290_ (.A(\ripple_adders[3].fa.sum ),
    .X(net92));
 sky130_fd_sc_hd__buf_1 _291_ (.A(\ripple_adders[4].fa.sum ),
    .X(net93));
 sky130_fd_sc_hd__buf_1 _292_ (.A(\ripple_adders[5].fa.sum ),
    .X(net94));
 sky130_fd_sc_hd__buf_1 _293_ (.A(\ripple_adders[6].fa.sum ),
    .X(net95));
 sky130_fd_sc_hd__buf_1 _294_ (.A(\ripple_adders[7].fa.sum ),
    .X(net96));
 sky130_fd_sc_hd__buf_1 _295_ (.A(\ripple_adders[8].fa.sum ),
    .X(net97));
 sky130_fd_sc_hd__buf_1 _296_ (.A(\ripple_adders[9].fa.sum ),
    .X(net98));
 sky130_fd_sc_hd__buf_1 _297_ (.A(\ripple_adders[10].fa.sum ),
    .X(net68));
 sky130_fd_sc_hd__buf_1 _298_ (.A(\ripple_adders[11].fa.sum ),
    .X(net69));
 sky130_fd_sc_hd__buf_1 _299_ (.A(\ripple_adders[12].fa.sum ),
    .X(net70));
 sky130_fd_sc_hd__buf_1 _300_ (.A(\ripple_adders[13].fa.sum ),
    .X(net71));
 sky130_fd_sc_hd__buf_1 _301_ (.A(\ripple_adders[14].fa.sum ),
    .X(net72));
 sky130_fd_sc_hd__buf_1 _302_ (.A(\ripple_adders[15].fa.sum ),
    .X(net73));
 sky130_fd_sc_hd__buf_1 _303_ (.A(\ripple_adders[16].fa.sum ),
    .X(net74));
 sky130_fd_sc_hd__buf_1 _304_ (.A(\ripple_adders[17].fa.sum ),
    .X(net75));
 sky130_fd_sc_hd__buf_1 _305_ (.A(\ripple_adders[18].fa.sum ),
    .X(net76));
 sky130_fd_sc_hd__buf_1 _306_ (.A(\ripple_adders[19].fa.sum ),
    .X(net77));
 sky130_fd_sc_hd__buf_1 _307_ (.A(\ripple_adders[20].fa.sum ),
    .X(net79));
 sky130_fd_sc_hd__buf_1 _308_ (.A(\ripple_adders[21].fa.sum ),
    .X(net80));
 sky130_fd_sc_hd__buf_1 _309_ (.A(\ripple_adders[22].fa.sum ),
    .X(net81));
 sky130_fd_sc_hd__buf_1 _310_ (.A(\ripple_adders[23].fa.sum ),
    .X(net82));
 sky130_fd_sc_hd__buf_1 _311_ (.A(\ripple_adders[24].fa.sum ),
    .X(net83));
 sky130_fd_sc_hd__buf_1 _312_ (.A(\ripple_adders[25].fa.sum ),
    .X(net84));
 sky130_fd_sc_hd__buf_1 _313_ (.A(\ripple_adders[26].fa.sum ),
    .X(net85));
 sky130_fd_sc_hd__buf_1 _314_ (.A(\ripple_adders[27].fa.sum ),
    .X(net86));
 sky130_fd_sc_hd__buf_1 _315_ (.A(\ripple_adders[28].fa.sum ),
    .X(net87));
 sky130_fd_sc_hd__buf_1 _316_ (.A(\ripple_adders[29].fa.sum ),
    .X(net88));
 sky130_fd_sc_hd__buf_1 _317_ (.A(\ripple_adders[30].fa.sum ),
    .X(net90));
 sky130_fd_sc_hd__buf_1 _318_ (.A(\ripple_adders[31].fa.sum ),
    .X(net91));
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(a[0]),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(a[10]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(a[11]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(a[12]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_1 input5 (.A(a[13]),
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
 sky130_fd_sc_hd__clkbuf_1 input14 (.A(a[21]),
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
 sky130_fd_sc_hd__clkbuf_1 input26 (.A(a[3]),
    .X(net26));
 sky130_fd_sc_hd__clkbuf_1 input27 (.A(a[4]),
    .X(net27));
 sky130_fd_sc_hd__clkbuf_1 input28 (.A(a[5]),
    .X(net28));
 sky130_fd_sc_hd__clkbuf_1 input29 (.A(a[6]),
    .X(net29));
 sky130_fd_sc_hd__clkbuf_1 input30 (.A(a[7]),
    .X(net30));
 sky130_fd_sc_hd__clkbuf_1 input31 (.A(a[8]),
    .X(net31));
 sky130_fd_sc_hd__clkbuf_1 input32 (.A(a[9]),
    .X(net32));
 sky130_fd_sc_hd__clkbuf_1 input33 (.A(b[0]),
    .X(net33));
 sky130_fd_sc_hd__clkbuf_1 input34 (.A(b[10]),
    .X(net34));
 sky130_fd_sc_hd__clkbuf_1 input35 (.A(b[11]),
    .X(net35));
 sky130_fd_sc_hd__clkbuf_1 input36 (.A(b[12]),
    .X(net36));
 sky130_fd_sc_hd__clkbuf_1 input37 (.A(b[13]),
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
 sky130_fd_sc_hd__clkbuf_1 input46 (.A(b[21]),
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
 sky130_fd_sc_hd__clkbuf_1 input61 (.A(b[6]),
    .X(net61));
 sky130_fd_sc_hd__clkbuf_1 input62 (.A(b[7]),
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

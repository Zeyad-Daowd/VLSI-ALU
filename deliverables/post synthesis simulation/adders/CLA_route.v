module CarryLookAheadAdder_route (Cin,
    Cout,
    A,
    B,
    Sum);
 input Cin;
 output Cout;
 input [31:0] A;
 input [31:0] B;
 output [31:0] Sum;

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

 sky130_fd_sc_hd__and2_1 _127_ (.A(net57),
    .B(net25),
    .X(_126_));
 sky130_fd_sc_hd__nor2_1 _128_ (.A(net57),
    .B(net25),
    .Y(_000_));
 sky130_fd_sc_hd__nor2_1 _129_ (.A(_126_),
    .B(_000_),
    .Y(_001_));
 sky130_fd_sc_hd__nand2_1 _130_ (.A(net56),
    .B(net24),
    .Y(_002_));
 sky130_fd_sc_hd__or2_1 _131_ (.A(net56),
    .B(net24),
    .X(_003_));
 sky130_fd_sc_hd__nand2_1 _132_ (.A(_002_),
    .B(_003_),
    .Y(_004_));
 sky130_fd_sc_hd__nand2_1 _133_ (.A(net54),
    .B(net22),
    .Y(_005_));
 sky130_fd_sc_hd__or2_1 _134_ (.A(net54),
    .B(net22),
    .X(_006_));
 sky130_fd_sc_hd__nand2_1 _135_ (.A(_005_),
    .B(_006_),
    .Y(_007_));
 sky130_fd_sc_hd__nand2_1 _136_ (.A(net53),
    .B(net21),
    .Y(_008_));
 sky130_fd_sc_hd__or2_1 _137_ (.A(net53),
    .B(net21),
    .X(_009_));
 sky130_fd_sc_hd__nand2_1 _138_ (.A(_008_),
    .B(_009_),
    .Y(_010_));
 sky130_fd_sc_hd__nand2_1 _139_ (.A(net52),
    .B(net20),
    .Y(_011_));
 sky130_fd_sc_hd__or2_1 _140_ (.A(net52),
    .B(net20),
    .X(_012_));
 sky130_fd_sc_hd__nand2_1 _141_ (.A(_011_),
    .B(_012_),
    .Y(_013_));
 sky130_fd_sc_hd__nand2_1 _142_ (.A(net51),
    .B(net19),
    .Y(_014_));
 sky130_fd_sc_hd__or2_1 _143_ (.A(net51),
    .B(net19),
    .X(_015_));
 sky130_fd_sc_hd__nand2_1 _144_ (.A(_014_),
    .B(_015_),
    .Y(_016_));
 sky130_fd_sc_hd__nand2_1 _145_ (.A(net50),
    .B(net18),
    .Y(_017_));
 sky130_fd_sc_hd__or2_1 _146_ (.A(net50),
    .B(net18),
    .X(_018_));
 sky130_fd_sc_hd__nand2_1 _147_ (.A(_017_),
    .B(_018_),
    .Y(_019_));
 sky130_fd_sc_hd__nand2_1 _148_ (.A(net49),
    .B(net17),
    .Y(_020_));
 sky130_fd_sc_hd__or2_1 _149_ (.A(net49),
    .B(net17),
    .X(_021_));
 sky130_fd_sc_hd__nand2_1 _150_ (.A(_020_),
    .B(_021_),
    .Y(_022_));
 sky130_fd_sc_hd__nand2_1 _151_ (.A(net48),
    .B(net16),
    .Y(_023_));
 sky130_fd_sc_hd__or2_1 _152_ (.A(net48),
    .B(net16),
    .X(_024_));
 sky130_fd_sc_hd__nand2_1 _153_ (.A(_023_),
    .B(_024_),
    .Y(_025_));
 sky130_fd_sc_hd__nand2_1 _154_ (.A(net47),
    .B(net15),
    .Y(_026_));
 sky130_fd_sc_hd__or2_1 _155_ (.A(net47),
    .B(net15),
    .X(_027_));
 sky130_fd_sc_hd__nand2_1 _156_ (.A(_026_),
    .B(_027_),
    .Y(_028_));
 sky130_fd_sc_hd__nand2_1 _157_ (.A(net46),
    .B(net14),
    .Y(_029_));
 sky130_fd_sc_hd__or2_1 _158_ (.A(net46),
    .B(net14),
    .X(_030_));
 sky130_fd_sc_hd__nand2_1 _159_ (.A(_029_),
    .B(_030_),
    .Y(_031_));
 sky130_fd_sc_hd__nand2_1 _160_ (.A(net45),
    .B(net13),
    .Y(_032_));
 sky130_fd_sc_hd__or2_1 _161_ (.A(net45),
    .B(net13),
    .X(_033_));
 sky130_fd_sc_hd__nand2_1 _162_ (.A(_032_),
    .B(_033_),
    .Y(_034_));
 sky130_fd_sc_hd__nand2_1 _163_ (.A(net43),
    .B(net11),
    .Y(_035_));
 sky130_fd_sc_hd__or2_1 _164_ (.A(net43),
    .B(net11),
    .X(_036_));
 sky130_fd_sc_hd__nand2_1 _165_ (.A(_035_),
    .B(_036_),
    .Y(_037_));
 sky130_fd_sc_hd__nand2_1 _166_ (.A(net42),
    .B(net10),
    .Y(_038_));
 sky130_fd_sc_hd__or2_1 _167_ (.A(net42),
    .B(net10),
    .X(_039_));
 sky130_fd_sc_hd__nand2_1 _168_ (.A(_038_),
    .B(_039_),
    .Y(_040_));
 sky130_fd_sc_hd__nand2_1 _169_ (.A(net41),
    .B(net9),
    .Y(_041_));
 sky130_fd_sc_hd__or2_1 _170_ (.A(net41),
    .B(net9),
    .X(_042_));
 sky130_fd_sc_hd__nand2_1 _171_ (.A(_041_),
    .B(_042_),
    .Y(_043_));
 sky130_fd_sc_hd__nand2_1 _172_ (.A(net40),
    .B(net8),
    .Y(_044_));
 sky130_fd_sc_hd__or2_1 _173_ (.A(net40),
    .B(net8),
    .X(_045_));
 sky130_fd_sc_hd__nand2_1 _174_ (.A(_044_),
    .B(_045_),
    .Y(_046_));
 sky130_fd_sc_hd__nand2_1 _175_ (.A(net39),
    .B(net7),
    .Y(_047_));
 sky130_fd_sc_hd__or2_1 _176_ (.A(net39),
    .B(net7),
    .X(_048_));
 sky130_fd_sc_hd__nand2_1 _177_ (.A(_047_),
    .B(_048_),
    .Y(_049_));
 sky130_fd_sc_hd__nand2_1 _178_ (.A(net38),
    .B(net6),
    .Y(_050_));
 sky130_fd_sc_hd__or2_1 _179_ (.A(net38),
    .B(net6),
    .X(_051_));
 sky130_fd_sc_hd__nand2_1 _180_ (.A(_050_),
    .B(_051_),
    .Y(_052_));
 sky130_fd_sc_hd__nand2_1 _181_ (.A(net37),
    .B(net5),
    .Y(_053_));
 sky130_fd_sc_hd__or2_1 _182_ (.A(net37),
    .B(net5),
    .X(_054_));
 sky130_fd_sc_hd__nand2_1 _183_ (.A(_053_),
    .B(_054_),
    .Y(_055_));
 sky130_fd_sc_hd__nand2_1 _184_ (.A(net36),
    .B(net4),
    .Y(_056_));
 sky130_fd_sc_hd__or2_1 _185_ (.A(net36),
    .B(net4),
    .X(_057_));
 sky130_fd_sc_hd__nand2_1 _186_ (.A(_056_),
    .B(_057_),
    .Y(_058_));
 sky130_fd_sc_hd__nand2_1 _187_ (.A(net35),
    .B(net3),
    .Y(_059_));
 sky130_fd_sc_hd__or2_1 _188_ (.A(net35),
    .B(net3),
    .X(_060_));
 sky130_fd_sc_hd__nand2_1 _189_ (.A(_059_),
    .B(_060_),
    .Y(_061_));
 sky130_fd_sc_hd__nand2_1 _190_ (.A(net34),
    .B(net2),
    .Y(_062_));
 sky130_fd_sc_hd__or2_1 _191_ (.A(net34),
    .B(net2),
    .X(_063_));
 sky130_fd_sc_hd__nand2_1 _192_ (.A(_062_),
    .B(_063_),
    .Y(_064_));
 sky130_fd_sc_hd__nand2_1 _193_ (.A(net64),
    .B(net32),
    .Y(_065_));
 sky130_fd_sc_hd__or2_1 _194_ (.A(net64),
    .B(net32),
    .X(_066_));
 sky130_fd_sc_hd__nand2_1 _195_ (.A(_065_),
    .B(_066_),
    .Y(_067_));
 sky130_fd_sc_hd__nand2_1 _196_ (.A(net63),
    .B(net31),
    .Y(_068_));
 sky130_fd_sc_hd__or2_1 _197_ (.A(net63),
    .B(net31),
    .X(_069_));
 sky130_fd_sc_hd__nand2_1 _198_ (.A(_068_),
    .B(_069_),
    .Y(_070_));
 sky130_fd_sc_hd__nand2_1 _199_ (.A(net62),
    .B(net30),
    .Y(_071_));
 sky130_fd_sc_hd__or2_1 _200_ (.A(net62),
    .B(net30),
    .X(_072_));
 sky130_fd_sc_hd__nand2_1 _201_ (.A(_071_),
    .B(_072_),
    .Y(_073_));
 sky130_fd_sc_hd__nand2_1 _202_ (.A(net61),
    .B(net29),
    .Y(_074_));
 sky130_fd_sc_hd__or2_1 _203_ (.A(net61),
    .B(net29),
    .X(_075_));
 sky130_fd_sc_hd__nand2_1 _204_ (.A(_074_),
    .B(_075_),
    .Y(_076_));
 sky130_fd_sc_hd__nand2_1 _205_ (.A(net60),
    .B(net28),
    .Y(_077_));
 sky130_fd_sc_hd__or2_1 _206_ (.A(net60),
    .B(net28),
    .X(_078_));
 sky130_fd_sc_hd__nand2_1 _207_ (.A(_077_),
    .B(_078_),
    .Y(_079_));
 sky130_fd_sc_hd__nand2_1 _208_ (.A(net59),
    .B(net27),
    .Y(_080_));
 sky130_fd_sc_hd__or2_1 _209_ (.A(net59),
    .B(net27),
    .X(_081_));
 sky130_fd_sc_hd__nand2_1 _210_ (.A(_080_),
    .B(_081_),
    .Y(_082_));
 sky130_fd_sc_hd__nand2_1 _211_ (.A(net58),
    .B(net26),
    .Y(_083_));
 sky130_fd_sc_hd__or2_1 _212_ (.A(net58),
    .B(net26),
    .X(_084_));
 sky130_fd_sc_hd__nand2_1 _213_ (.A(_083_),
    .B(_084_),
    .Y(_085_));
 sky130_fd_sc_hd__nand2_1 _214_ (.A(net55),
    .B(net23),
    .Y(_086_));
 sky130_fd_sc_hd__nand2_1 _215_ (.A(net44),
    .B(net12),
    .Y(_087_));
 sky130_fd_sc_hd__nand2_1 _216_ (.A(net33),
    .B(net1),
    .Y(_088_));
 sky130_fd_sc_hd__or2_1 _217_ (.A(net33),
    .B(net1),
    .X(_089_));
 sky130_fd_sc_hd__nand2_1 _218_ (.A(_088_),
    .B(_089_),
    .Y(_090_));
 sky130_fd_sc_hd__a21bo_1 _219_ (.A1(net65),
    .A2(_089_),
    .B1_N(_088_),
    .X(_091_));
 sky130_fd_sc_hd__or2_1 _220_ (.A(net44),
    .B(net12),
    .X(_092_));
 sky130_fd_sc_hd__nand2_1 _221_ (.A(_087_),
    .B(_092_),
    .Y(_093_));
 sky130_fd_sc_hd__a21bo_1 _222_ (.A1(_091_),
    .A2(_092_),
    .B1_N(_087_),
    .X(_094_));
 sky130_fd_sc_hd__or2_1 _223_ (.A(net55),
    .B(net23),
    .X(_095_));
 sky130_fd_sc_hd__nand2_1 _224_ (.A(_086_),
    .B(_095_),
    .Y(_096_));
 sky130_fd_sc_hd__a21bo_1 _225_ (.A1(_094_),
    .A2(_095_),
    .B1_N(_086_),
    .X(_097_));
 sky130_fd_sc_hd__a21bo_1 _226_ (.A1(_084_),
    .A2(_097_),
    .B1_N(_083_),
    .X(_098_));
 sky130_fd_sc_hd__a21bo_1 _227_ (.A1(_081_),
    .A2(_098_),
    .B1_N(_080_),
    .X(_099_));
 sky130_fd_sc_hd__a21bo_1 _228_ (.A1(_078_),
    .A2(_099_),
    .B1_N(_077_),
    .X(_100_));
 sky130_fd_sc_hd__a21bo_1 _229_ (.A1(_075_),
    .A2(_100_),
    .B1_N(_074_),
    .X(_101_));
 sky130_fd_sc_hd__a21bo_1 _230_ (.A1(_072_),
    .A2(_101_),
    .B1_N(_071_),
    .X(_102_));
 sky130_fd_sc_hd__a21bo_1 _231_ (.A1(_069_),
    .A2(_102_),
    .B1_N(_068_),
    .X(_103_));
 sky130_fd_sc_hd__a21bo_1 _232_ (.A1(_066_),
    .A2(_103_),
    .B1_N(_065_),
    .X(_104_));
 sky130_fd_sc_hd__a21bo_1 _233_ (.A1(_063_),
    .A2(_104_),
    .B1_N(_062_),
    .X(_105_));
 sky130_fd_sc_hd__a21bo_1 _234_ (.A1(_060_),
    .A2(_105_),
    .B1_N(_059_),
    .X(_106_));
 sky130_fd_sc_hd__a21bo_1 _235_ (.A1(_057_),
    .A2(_106_),
    .B1_N(_056_),
    .X(_107_));
 sky130_fd_sc_hd__a21bo_1 _236_ (.A1(_054_),
    .A2(_107_),
    .B1_N(_053_),
    .X(_108_));
 sky130_fd_sc_hd__a21bo_1 _237_ (.A1(_051_),
    .A2(_108_),
    .B1_N(_050_),
    .X(_109_));
 sky130_fd_sc_hd__a21bo_1 _238_ (.A1(_048_),
    .A2(_109_),
    .B1_N(_047_),
    .X(_110_));
 sky130_fd_sc_hd__a21bo_1 _239_ (.A1(_045_),
    .A2(_110_),
    .B1_N(_044_),
    .X(_111_));
 sky130_fd_sc_hd__a21bo_1 _240_ (.A1(_042_),
    .A2(_111_),
    .B1_N(_041_),
    .X(_112_));
 sky130_fd_sc_hd__a21bo_1 _241_ (.A1(_039_),
    .A2(_112_),
    .B1_N(_038_),
    .X(_113_));
 sky130_fd_sc_hd__a21bo_1 _242_ (.A1(_036_),
    .A2(_113_),
    .B1_N(_035_),
    .X(_114_));
 sky130_fd_sc_hd__a21bo_1 _243_ (.A1(_033_),
    .A2(_114_),
    .B1_N(_032_),
    .X(_115_));
 sky130_fd_sc_hd__a21bo_1 _244_ (.A1(_030_),
    .A2(_115_),
    .B1_N(_029_),
    .X(_116_));
 sky130_fd_sc_hd__a21bo_1 _245_ (.A1(_027_),
    .A2(_116_),
    .B1_N(_026_),
    .X(_117_));
 sky130_fd_sc_hd__a21bo_1 _246_ (.A1(_024_),
    .A2(_117_),
    .B1_N(_023_),
    .X(_118_));
 sky130_fd_sc_hd__a21bo_1 _247_ (.A1(_021_),
    .A2(_118_),
    .B1_N(_020_),
    .X(_119_));
 sky130_fd_sc_hd__a21bo_1 _248_ (.A1(_018_),
    .A2(_119_),
    .B1_N(_017_),
    .X(_120_));
 sky130_fd_sc_hd__a21bo_1 _249_ (.A1(_015_),
    .A2(_120_),
    .B1_N(_014_),
    .X(_121_));
 sky130_fd_sc_hd__a21bo_1 _250_ (.A1(_012_),
    .A2(_121_),
    .B1_N(_011_),
    .X(_122_));
 sky130_fd_sc_hd__a21bo_1 _251_ (.A1(_009_),
    .A2(_122_),
    .B1_N(_008_),
    .X(_123_));
 sky130_fd_sc_hd__a21bo_1 _252_ (.A1(_006_),
    .A2(_123_),
    .B1_N(_005_),
    .X(_124_));
 sky130_fd_sc_hd__a21boi_1 _253_ (.A1(_003_),
    .A2(_124_),
    .B1_N(_002_),
    .Y(_125_));
 sky130_fd_sc_hd__o21bai_1 _254_ (.A1(_000_),
    .A2(_125_),
    .B1_N(_126_),
    .Y(net66));
 sky130_fd_sc_hd__xnor2_1 _255_ (.A(net65),
    .B(_090_),
    .Y(net67));
 sky130_fd_sc_hd__xnor2_1 _256_ (.A(_091_),
    .B(_093_),
    .Y(net78));
 sky130_fd_sc_hd__xnor2_1 _257_ (.A(_094_),
    .B(_096_),
    .Y(net89));
 sky130_fd_sc_hd__xnor2_1 _258_ (.A(_085_),
    .B(_097_),
    .Y(net92));
 sky130_fd_sc_hd__xnor2_1 _259_ (.A(_082_),
    .B(_098_),
    .Y(net93));
 sky130_fd_sc_hd__xnor2_1 _260_ (.A(_079_),
    .B(_099_),
    .Y(net94));
 sky130_fd_sc_hd__xnor2_1 _261_ (.A(_076_),
    .B(_100_),
    .Y(net95));
 sky130_fd_sc_hd__xnor2_1 _262_ (.A(_073_),
    .B(_101_),
    .Y(net96));
 sky130_fd_sc_hd__xnor2_1 _263_ (.A(_070_),
    .B(_102_),
    .Y(net97));
 sky130_fd_sc_hd__xnor2_1 _264_ (.A(_067_),
    .B(_103_),
    .Y(net98));
 sky130_fd_sc_hd__xnor2_1 _265_ (.A(_064_),
    .B(_104_),
    .Y(net68));
 sky130_fd_sc_hd__xnor2_1 _266_ (.A(_061_),
    .B(_105_),
    .Y(net69));
 sky130_fd_sc_hd__xnor2_1 _267_ (.A(_058_),
    .B(_106_),
    .Y(net70));
 sky130_fd_sc_hd__xnor2_1 _268_ (.A(_055_),
    .B(_107_),
    .Y(net71));
 sky130_fd_sc_hd__xnor2_1 _269_ (.A(_052_),
    .B(_108_),
    .Y(net72));
 sky130_fd_sc_hd__xnor2_1 _270_ (.A(_049_),
    .B(_109_),
    .Y(net73));
 sky130_fd_sc_hd__xnor2_1 _271_ (.A(_046_),
    .B(_110_),
    .Y(net74));
 sky130_fd_sc_hd__xnor2_1 _272_ (.A(_043_),
    .B(_111_),
    .Y(net75));
 sky130_fd_sc_hd__xnor2_1 _273_ (.A(_040_),
    .B(_112_),
    .Y(net76));
 sky130_fd_sc_hd__xnor2_1 _274_ (.A(_037_),
    .B(_113_),
    .Y(net77));
 sky130_fd_sc_hd__xnor2_1 _275_ (.A(_034_),
    .B(_114_),
    .Y(net79));
 sky130_fd_sc_hd__xnor2_1 _276_ (.A(_031_),
    .B(_115_),
    .Y(net80));
 sky130_fd_sc_hd__xnor2_1 _277_ (.A(_028_),
    .B(_116_),
    .Y(net81));
 sky130_fd_sc_hd__xnor2_1 _278_ (.A(_025_),
    .B(_117_),
    .Y(net82));
 sky130_fd_sc_hd__xnor2_1 _279_ (.A(_022_),
    .B(_118_),
    .Y(net83));
 sky130_fd_sc_hd__xnor2_1 _280_ (.A(_019_),
    .B(_119_),
    .Y(net84));
 sky130_fd_sc_hd__xnor2_1 _281_ (.A(_016_),
    .B(_120_),
    .Y(net85));
 sky130_fd_sc_hd__xnor2_1 _282_ (.A(_013_),
    .B(_121_),
    .Y(net86));
 sky130_fd_sc_hd__xnor2_1 _283_ (.A(_010_),
    .B(_122_),
    .Y(net87));
 sky130_fd_sc_hd__xnor2_1 _284_ (.A(_007_),
    .B(_123_),
    .Y(net88));
 sky130_fd_sc_hd__xnor2_1 _285_ (.A(_004_),
    .B(_124_),
    .Y(net90));
 sky130_fd_sc_hd__xnor2_1 _286_ (.A(_001_),
    .B(_125_),
    .Y(net91));
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(A[0]),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(A[10]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(A[11]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(A[12]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_1 input5 (.A(A[13]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 input6 (.A(A[14]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_1 input7 (.A(A[15]),
    .X(net7));
 sky130_fd_sc_hd__clkbuf_1 input8 (.A(A[16]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_1 input9 (.A(A[17]),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_1 input10 (.A(A[18]),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_1 input11 (.A(A[19]),
    .X(net11));
 sky130_fd_sc_hd__clkbuf_1 input12 (.A(A[1]),
    .X(net12));
 sky130_fd_sc_hd__clkbuf_1 input13 (.A(A[20]),
    .X(net13));
 sky130_fd_sc_hd__clkbuf_1 input14 (.A(A[21]),
    .X(net14));
 sky130_fd_sc_hd__clkbuf_1 input15 (.A(A[22]),
    .X(net15));
 sky130_fd_sc_hd__clkbuf_1 input16 (.A(A[23]),
    .X(net16));
 sky130_fd_sc_hd__clkbuf_1 input17 (.A(A[24]),
    .X(net17));
 sky130_fd_sc_hd__clkbuf_1 input18 (.A(A[25]),
    .X(net18));
 sky130_fd_sc_hd__clkbuf_1 input19 (.A(A[26]),
    .X(net19));
 sky130_fd_sc_hd__clkbuf_1 input20 (.A(A[27]),
    .X(net20));
 sky130_fd_sc_hd__clkbuf_1 input21 (.A(A[28]),
    .X(net21));
 sky130_fd_sc_hd__clkbuf_1 input22 (.A(A[29]),
    .X(net22));
 sky130_fd_sc_hd__clkbuf_1 input23 (.A(A[2]),
    .X(net23));
 sky130_fd_sc_hd__clkbuf_1 input24 (.A(A[30]),
    .X(net24));
 sky130_fd_sc_hd__clkbuf_1 input25 (.A(A[31]),
    .X(net25));
 sky130_fd_sc_hd__clkbuf_1 input26 (.A(A[3]),
    .X(net26));
 sky130_fd_sc_hd__clkbuf_1 input27 (.A(A[4]),
    .X(net27));
 sky130_fd_sc_hd__clkbuf_1 input28 (.A(A[5]),
    .X(net28));
 sky130_fd_sc_hd__clkbuf_1 input29 (.A(A[6]),
    .X(net29));
 sky130_fd_sc_hd__clkbuf_1 input30 (.A(A[7]),
    .X(net30));
 sky130_fd_sc_hd__clkbuf_1 input31 (.A(A[8]),
    .X(net31));
 sky130_fd_sc_hd__clkbuf_1 input32 (.A(A[9]),
    .X(net32));
 sky130_fd_sc_hd__clkbuf_1 input33 (.A(B[0]),
    .X(net33));
 sky130_fd_sc_hd__clkbuf_1 input34 (.A(B[10]),
    .X(net34));
 sky130_fd_sc_hd__clkbuf_1 input35 (.A(B[11]),
    .X(net35));
 sky130_fd_sc_hd__clkbuf_1 input36 (.A(B[12]),
    .X(net36));
 sky130_fd_sc_hd__clkbuf_1 input37 (.A(B[13]),
    .X(net37));
 sky130_fd_sc_hd__clkbuf_1 input38 (.A(B[14]),
    .X(net38));
 sky130_fd_sc_hd__clkbuf_1 input39 (.A(B[15]),
    .X(net39));
 sky130_fd_sc_hd__clkbuf_1 input40 (.A(B[16]),
    .X(net40));
 sky130_fd_sc_hd__clkbuf_1 input41 (.A(B[17]),
    .X(net41));
 sky130_fd_sc_hd__clkbuf_1 input42 (.A(B[18]),
    .X(net42));
 sky130_fd_sc_hd__clkbuf_1 input43 (.A(B[19]),
    .X(net43));
 sky130_fd_sc_hd__clkbuf_1 input44 (.A(B[1]),
    .X(net44));
 sky130_fd_sc_hd__clkbuf_1 input45 (.A(B[20]),
    .X(net45));
 sky130_fd_sc_hd__clkbuf_1 input46 (.A(B[21]),
    .X(net46));
 sky130_fd_sc_hd__clkbuf_1 input47 (.A(B[22]),
    .X(net47));
 sky130_fd_sc_hd__clkbuf_1 input48 (.A(B[23]),
    .X(net48));
 sky130_fd_sc_hd__clkbuf_1 input49 (.A(B[24]),
    .X(net49));
 sky130_fd_sc_hd__clkbuf_1 input50 (.A(B[25]),
    .X(net50));
 sky130_fd_sc_hd__clkbuf_1 input51 (.A(B[26]),
    .X(net51));
 sky130_fd_sc_hd__clkbuf_1 input52 (.A(B[27]),
    .X(net52));
 sky130_fd_sc_hd__clkbuf_1 input53 (.A(B[28]),
    .X(net53));
 sky130_fd_sc_hd__clkbuf_1 input54 (.A(B[29]),
    .X(net54));
 sky130_fd_sc_hd__clkbuf_1 input55 (.A(B[2]),
    .X(net55));
 sky130_fd_sc_hd__clkbuf_1 input56 (.A(B[30]),
    .X(net56));
 sky130_fd_sc_hd__clkbuf_1 input57 (.A(B[31]),
    .X(net57));
 sky130_fd_sc_hd__clkbuf_1 input58 (.A(B[3]),
    .X(net58));
 sky130_fd_sc_hd__clkbuf_1 input59 (.A(B[4]),
    .X(net59));
 sky130_fd_sc_hd__clkbuf_1 input60 (.A(B[5]),
    .X(net60));
 sky130_fd_sc_hd__clkbuf_1 input61 (.A(B[6]),
    .X(net61));
 sky130_fd_sc_hd__clkbuf_1 input62 (.A(B[7]),
    .X(net62));
 sky130_fd_sc_hd__clkbuf_1 input63 (.A(B[8]),
    .X(net63));
 sky130_fd_sc_hd__clkbuf_1 input64 (.A(B[9]),
    .X(net64));
 sky130_fd_sc_hd__buf_1 input65 (.A(Cin),
    .X(net65));
 sky130_fd_sc_hd__clkbuf_16 output66 (.A(net66),
    .X(Cout));
 sky130_fd_sc_hd__clkbuf_16 output67 (.A(net67),
    .X(Sum[0]));
 sky130_fd_sc_hd__clkbuf_16 output68 (.A(net68),
    .X(Sum[10]));
 sky130_fd_sc_hd__clkbuf_16 output69 (.A(net69),
    .X(Sum[11]));
 sky130_fd_sc_hd__clkbuf_16 output70 (.A(net70),
    .X(Sum[12]));
 sky130_fd_sc_hd__clkbuf_16 output71 (.A(net71),
    .X(Sum[13]));
 sky130_fd_sc_hd__clkbuf_16 output72 (.A(net72),
    .X(Sum[14]));
 sky130_fd_sc_hd__clkbuf_16 output73 (.A(net73),
    .X(Sum[15]));
 sky130_fd_sc_hd__clkbuf_16 output74 (.A(net74),
    .X(Sum[16]));
 sky130_fd_sc_hd__clkbuf_16 output75 (.A(net75),
    .X(Sum[17]));
 sky130_fd_sc_hd__clkbuf_16 output76 (.A(net76),
    .X(Sum[18]));
 sky130_fd_sc_hd__clkbuf_16 output77 (.A(net77),
    .X(Sum[19]));
 sky130_fd_sc_hd__clkbuf_16 output78 (.A(net78),
    .X(Sum[1]));
 sky130_fd_sc_hd__clkbuf_16 output79 (.A(net79),
    .X(Sum[20]));
 sky130_fd_sc_hd__clkbuf_16 output80 (.A(net80),
    .X(Sum[21]));
 sky130_fd_sc_hd__clkbuf_16 output81 (.A(net81),
    .X(Sum[22]));
 sky130_fd_sc_hd__clkbuf_16 output82 (.A(net82),
    .X(Sum[23]));
 sky130_fd_sc_hd__clkbuf_16 output83 (.A(net83),
    .X(Sum[24]));
 sky130_fd_sc_hd__clkbuf_16 output84 (.A(net84),
    .X(Sum[25]));
 sky130_fd_sc_hd__clkbuf_16 output85 (.A(net85),
    .X(Sum[26]));
 sky130_fd_sc_hd__clkbuf_16 output86 (.A(net86),
    .X(Sum[27]));
 sky130_fd_sc_hd__clkbuf_16 output87 (.A(net87),
    .X(Sum[28]));
 sky130_fd_sc_hd__clkbuf_16 output88 (.A(net88),
    .X(Sum[29]));
 sky130_fd_sc_hd__clkbuf_16 output89 (.A(net89),
    .X(Sum[2]));
 sky130_fd_sc_hd__clkbuf_16 output90 (.A(net90),
    .X(Sum[30]));
 sky130_fd_sc_hd__clkbuf_16 output91 (.A(net91),
    .X(Sum[31]));
 sky130_fd_sc_hd__clkbuf_16 output92 (.A(net92),
    .X(Sum[3]));
 sky130_fd_sc_hd__clkbuf_16 output93 (.A(net93),
    .X(Sum[4]));
 sky130_fd_sc_hd__clkbuf_16 output94 (.A(net94),
    .X(Sum[5]));
 sky130_fd_sc_hd__clkbuf_16 output95 (.A(net95),
    .X(Sum[6]));
 sky130_fd_sc_hd__clkbuf_16 output96 (.A(net96),
    .X(Sum[7]));
 sky130_fd_sc_hd__clkbuf_16 output97 (.A(net97),
    .X(Sum[8]));
 sky130_fd_sc_hd__clkbuf_16 output98 (.A(net98),
    .X(Sum[9]));
endmodule

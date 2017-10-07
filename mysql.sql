create database lianshang charset utf8;
use lianshang;
create table indexInMid(
    pid     INT PRIMARY KEY AUTO_INCREMENT,
    pname   VARCHAR(100),
    price   DOUBLE(6,2),
    pic     VARCHAR(100),
    kid     INT
);
SET NAMES GBK;
INSERT INTO indexInMid VALUES(null,"可定制几何金葱/银葱化纤面料醋酸",18.7,"image/1185_1453391092545.jpg",10);
INSERT INTO indexInMid VALUES(null,"竹节麻棉面料",17.1,"image/6736_20151201164603368671_y.jpg",10);
INSERT INTO indexInMid VALUES(null,"厂家直销男女装保暖内衣面料银狐绒",13.2,"image/12045_20151124155826167208.jpg",10);
INSERT INTO indexInMid VALUES(null,"21坑直条锦涤灯芯绒21条灯芯绒亮色多现",23.2,"image/10482_20151230103740205399_y.jpg",10);
INSERT INTO indexInMid VALUES(null,"天蓝裤装其它工艺棉纺面料全棉",34.6,"image/52870_20151113212148279819.jpg",20);
INSERT INTO indexInMid VALUES(null,"高定零剪 限量大促 欧洲高端进口现货  ...",43.9,"image/4210_1478242274530.jpg",20);
INSERT INTO indexInMid VALUES(null,"粉色现货春秋季印花休闲人物女装裙装涤纶化...",54.0,"image/7621_1483437261918.jpg",20);
INSERT INTO indexInMid VALUES(null,"蓝色现货春秋季印花休闲几何女装裙装涤纶化...",48.0,"image/6899_1483436860085.jpg",20);
INSERT INTO indexInMid VALUES(null,"抽象人物印花雪纺面料",28.0,"image/44089_20151110212605825433.jpg",30);
INSERT INTO indexInMid VALUES(null,"卡通房印花面料",23.0,"image/4948_1478573843264.jpg",30);
INSERT INTO indexInMid VALUES(null,"【高定零剪】限量大促 欧洲高端进口现货 ...",25.0,"image/1427_1470380404089.jpg",30);
INSERT INTO indexInMid VALUES(null,"可定制几何金葱/银葱化纤面料醋酸",19.0,"image/1185_1453391092545.jpg",30);

INSERT INTO indexInMid VALUES(null,"西瓜红其他风格其它工艺棉纺面料弹力棉涤",18.7,"image/10998_20151223180420869447_y.jpg",40);
INSERT INTO indexInMid VALUES(null,"现货热销 针织空气层面料",17.1,"image/10482_20151230103740205399_y.jpg",40);
INSERT INTO indexInMid VALUES(null,"厂家现货 钻石绒婴儿玩具抱毯服装家纺舒适...",13.2,"image/7025_1474641494759.jpg",40);
INSERT INTO indexInMid VALUES(null,"绿色绣花化纤面料涤纶",23.2,"image/7840_2015112414143576824.jpg",40);
INSERT INTO indexInMid VALUES(null,"多色休闲印花化纤面料雪纺",34.6,"image/1069696_1442237205.jpg",50);
INSERT INTO indexInMid VALUES(null,"蓝色现货春夏季印花休闲植物涤纶化纤面料",43.9,"image/7422_20151223155058239148_y.jpg",50);
INSERT INTO indexInMid VALUES(null,"蝴蝶印花蕾丝面料",54.0,"image/392_1474250272165.jpg",50);
INSERT INTO indexInMid VALUES(null,"水仙花硬挺真丝数码印花",48.0,"image/4749_1453720565396.jpg",50);
INSERT INTO indexInMid VALUES(null,"法国高档时尚面料针织布",28.0,"image/3608_1463546960198.jpg",60);
INSERT INTO indexInMid VALUES(null,"卡通房印花面料",23.0,"image/5156_1457712982374.jpg",60);
INSERT INTO indexInMid VALUES(null,"欧洲高端进口现货 ...",25.0,"image/5225_1467625053601.jpg",60);
INSERT INTO indexInMid VALUES(null,"银葱化纤面料醋酸",19.0,"image/4947_1461582899065.jpg",60);

create table kindIn(
    kid       INT,
    kname     VARCHAR(100)
);
INSERT INTO kindIn VALUES(10,'限时大促');
INSERT INTO kindIn VALUES(20,'时尚新款');
INSERT INTO kindIn VALUES(30,'花型');

create table indexInRt(
    pid     INT PRIMARY KEY AUTO_INCREMENT,
    pname   VARCHAR(100),
    price   DOUBLE(6,2),
    pic     VARCHAR(100),
    kid     INT
);
SET NAMES GBK;
INSERT INTO indexInRt VALUES(null,"厂家热销 40s支密棉奥代尔 春夏针织纯...",48.0,"image/8774_1476884334731.jpg",60);
INSERT INTO indexInRt VALUES(null,"【高定零剪】特价大促 欧洲高端进口现货 ...",59.0,"image/5299_1478249531833.jpg",70);
INSERT INTO indexInRt VALUES(null,"浅蓝色现货春秋季印花休闲卡通女装涤纶化纤...",52.0,"image/800_1473503254871.jpg",80);
INSERT INTO indexInRt VALUES(null,"多色提花化纤面料涤粘布",46.0,"image/190_20151130091545118331.jpg",90);
INSERT INTO indexInRt VALUES(null,"意大利进口面料色织提花小方格",43.0,"image/5990_1469601070296.jpg",100);
INSERT INTO indexInRt VALUES(null,"多色期货春夏秋冬季色织休闲花卉女装蕾丝针...",39.0,"image/1185_1453391092545.jpg",110);

create table slider(
    pid     INT PRIMARY KEY AUTO_INCREMENT,
    pic     VARCHAR(100)
);
INSERT INTO slider VALUES(null,"image/banner_01.jpg");
INSERT INTO slider VALUES(null,"image/banner_02.jpg");
INSERT INTO slider VALUES(null,"image/banner_03.jpg");
INSERT INTO slider VALUES(null,"image/banner_04.jpg");
INSERT INTO slider VALUES(null,"image/banner_05.jpg");
INSERT INTO slider VALUES(null,"image/banner_06.jpg");


create table thirdfl(
    pid     INT PRIMARY KEY AUTO_INCREMENT,
    pname   VARCHAR(100),
    picb     VARCHAR(100),
    pics     VARCHAR(100)
);
INSERT INTO thirdfl VALUES(null,"主营：提花,印花,棉麻丝毛,化纤面料","image/brands_t1.jpg","image/brand_tlogo1.jpg");
INSERT INTO thirdfl VALUES(null,"主营：棉纺面料,化纤面料,丝绸面料,毛纺面料","image/brands_t2.jpg","image/brand_tlogo2.jpg");
INSERT INTO thirdfl VALUES(null,"主营：麂皮绒系列,单/双面麂皮绒,复合麂皮绒","image/brands_t3.jpg","image/brand_tlogo3.jpg");
INSERT INTO thirdfl VALUES(null,"主营：化纤,棉纺面料","image/brands_t4.jpg","image/brand_tlogo4.jpg");
INSERT INTO thirdfl VALUES(null,"主营：梭织毛纺顺毛呢、提花呢、大衣呢","image/brands_t5.jpg","image/brand_tlogo5.jpg");
INSERT INTO thirdfl VALUES(null,"主营：人造毛皮,经纬编毛绒,针织毛呢","image/brands_t6.jpg","image/brand_tlogo6.jpg");
INSERT INTO thirdfl VALUES(null,"主营：日本进口面料","image/brands_t7.jpg","image/brand_tlogo7.jpg");
INSERT INTO thirdfl VALUES(null,"主营： 日本三菱醋酸面料","image/brands_t8.jpg","image/brand_tlogo8.jpg");

create table user(
    uid     INT PRIMARY KEY AUTO_INCREMENT,
    uname   VARCHAR(100),
    upwd    VARCHAR(20)
);
INSERT INTO user VALUES(null,'qiangqiang','123465qq');
//红色 花色 黑色 蓝色 粉色 米色 紫色
create table productlist(
    pid      INT PRIMARY KEY AUTO_INCREMENT,
    pname    VARCHAR(100),
    pbrand VARCHAR(100),
    pic      VARCHAR(100),
    price    DOUBLE(6,2),
    color    VARCHAR(20),
    pseason   VARCHAR(20),
    place    VARCHAR(20)
);
SET NAMES GBK;
insert into productlist values(null,"红色提花化纤面料涤纶","奕腾时尚","image/200117_20151211193324114770_y.jpg",55.00,"红色","春","上海");
insert into productlist values(null,"四叶草毛绒","海森时尚毛绒","image/2202_1468561051090.jpg",85.00,"花色","春","广州");
insert into productlist values(null,"时尚女装面料","德生","image/9766_1461583580537.jpg",2080.00,"黑色","春","东莞");
insert into productlist values(null,"16条锦涤纬弹灯芯绒女装童装面料","国骄纺织","image/5644_2015113011512473656_y.jpg",8.80,"花色","春","扬州");
insert into productlist values(null,"厂家热销  韩国丝数码印花","众和针纺","image/669_1453499238728.jpg",36.00,"花色","春","东莞");
insert into productlist values(null,"个性时尚韩版提花剪花流面料批发","三庄纺织 （尚元府）","image/7181_1462506902302.jpg",35.00,"黑色","春","扬州");
insert into productlist values(null,"现期货毛纺面料","富盈毛纺","image/9582_1464918073779.jpg",135.00,"黑色","春","上海");
insert into productlist values(null,"欧根纱S_15","168纺织","image/912_1464933765705.jpg",7.80,"花色","春","扬州");
insert into productlist values(null,"浅蓝色花卉绣花棉纺面料蕾丝","瑞莎纺织","image/7465_20150814203007951667.jpg",53.00,"蓝色","夏","东莞");
insert into productlist values(null,"多色印花棉纺面料全棉","奕腾时尚","image/200094_20151211193216457463_y.jpg",69.00,"花色","夏","上海");
insert into productlist values(null,"多色长毛绒","海森时尚毛绒","image/3379_1496808327226.jpg",85.00,"花色","夏","上海");
insert into productlist values(null,"多色花卉提花化纤面料涤粘布","GTC","image/44679_20151111155303313744.jpg",50.75,"花色","夏","广州");
insert into productlist values(null,"时尚女装色织面料","德生","image/7168_1461581493067.jpg",599.00,"粉色","夏","东莞");
insert into productlist values(null,"厂家主打热销 针织提花印花D1601","众和针纺","image/3700_1461307865713.jpg",45.00,"花色","夏","广州");
insert into productlist values(null,"时尚提花镂空连衣裙面料批发","三庄纺织 （尚元府）","image/669_1453499238728.jpg",0.28,"米色","秋","扬州");
insert into productlist values(null,"长毛绒格子","富盈毛纺","image/3340_1462777377100.jpg",32.00,"花色","秋","上海");
insert into productlist values(null,"米色花卉绣花棉纺面料蕾丝","瑞莎纺织","image/7466_20150814203011775537.jpg",44.00,"米色","秋","上海");
insert into productlist values(null,"多色印花棉纺面料涤棉布","奕腾时尚","image/200019_20151211192828259292_y.jpg",105.00,"花色","秋","广州");
insert into productlist values(null,"黑色褶皱化纤面料弹力涤粘","GTC","image/2202_1468561051090.jpg",50.75,"黑色","秋","东莞");
insert into productlist values(null,"时尚梭织提花面料","德生","image/9703_1461583712253.jpg",564.00,"花色","冬","广州");
insert into productlist values(null,"多色期货电镀休闲金属其它紧扣类辅料","磐安华鑫五金厂","image/669_1453499238728.jpg",0.28,"花色","冬","扬州");
insert into productlist values(null,"28条仿平绒锦涤灯芯绒28坑平绒梭织鞋材面料","国骄纺织","image/5648_2015113011513379809_y.jpg",0.28,"紫色","冬","东莞");

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
INSERT INTO indexInMid VALUES(null,"�ɶ��Ƽ��ν��/���л������ϴ���",18.7,"image/1185_1453391092545.jpg",10);
INSERT INTO indexInMid VALUES(null,"�����������",17.1,"image/6736_20151201164603368671_y.jpg",10);
INSERT INTO indexInMid VALUES(null,"����ֱ����Ůװ��ů��������������",13.2,"image/12045_20151124155826167208.jpg",10);
INSERT INTO indexInMid VALUES(null,"21��ֱ�����ӵ�о��21����о����ɫ����",23.2,"image/10482_20151230103740205399_y.jpg",10);
INSERT INTO indexInMid VALUES(null,"������װ���������޷�����ȫ��",34.6,"image/52870_20151113212148279819.jpg",20);
INSERT INTO indexInMid VALUES(null,"�߶���� ������� ŷ�޸߶˽����ֻ�  ...",43.9,"image/4210_1478242274530.jpg",20);
INSERT INTO indexInMid VALUES(null,"��ɫ�ֻ����＾ӡ����������Ůװȹװ���ڻ�...",54.0,"image/7621_1483437261918.jpg",20);
INSERT INTO indexInMid VALUES(null,"��ɫ�ֻ����＾ӡ�����м���Ůװȹװ���ڻ�...",48.0,"image/6899_1483436860085.jpg",20);
INSERT INTO indexInMid VALUES(null,"��������ӡ��ѩ������",28.0,"image/44089_20151110212605825433.jpg",30);
INSERT INTO indexInMid VALUES(null,"��ͨ��ӡ������",23.0,"image/4948_1478573843264.jpg",30);
INSERT INTO indexInMid VALUES(null,"���߶������������� ŷ�޸߶˽����ֻ� ...",25.0,"image/1427_1470380404089.jpg",30);
INSERT INTO indexInMid VALUES(null,"�ɶ��Ƽ��ν��/���л������ϴ���",19.0,"image/1185_1453391092545.jpg",30);

INSERT INTO indexInMid VALUES(null,"���Ϻ�����������������޷����ϵ����޵�",18.7,"image/10998_20151223180420869447_y.jpg",40);
INSERT INTO indexInMid VALUES(null,"�ֻ����� ��֯����������",17.1,"image/10482_20151230103740205399_y.jpg",40);
INSERT INTO indexInMid VALUES(null,"�����ֻ� ��ʯ��Ӥ����߱�̺��װ�ҷ�����...",13.2,"image/7025_1474641494759.jpg",40);
INSERT INTO indexInMid VALUES(null,"��ɫ�廨�������ϵ���",23.2,"image/7840_2015112414143576824.jpg",40);
INSERT INTO indexInMid VALUES(null,"��ɫ����ӡ����������ѩ��",34.6,"image/1069696_1442237205.jpg",50);
INSERT INTO indexInMid VALUES(null,"��ɫ�ֻ����ļ�ӡ������ֲ����ڻ�������",43.9,"image/7422_20151223155058239148_y.jpg",50);
INSERT INTO indexInMid VALUES(null,"����ӡ����˿����",54.0,"image/392_1474250272165.jpg",50);
INSERT INTO indexInMid VALUES(null,"ˮ�ɻ�Ӳͦ��˿����ӡ��",48.0,"image/4749_1453720565396.jpg",50);
INSERT INTO indexInMid VALUES(null,"�����ߵ�ʱ��������֯��",28.0,"image/3608_1463546960198.jpg",60);
INSERT INTO indexInMid VALUES(null,"��ͨ��ӡ������",23.0,"image/5156_1457712982374.jpg",60);
INSERT INTO indexInMid VALUES(null,"ŷ�޸߶˽����ֻ� ...",25.0,"image/5225_1467625053601.jpg",60);
INSERT INTO indexInMid VALUES(null,"���л������ϴ���",19.0,"image/4947_1461582899065.jpg",60);

create table kindIn(
    kid       INT,
    kname     VARCHAR(100)
);
INSERT INTO kindIn VALUES(10,'��ʱ���');
INSERT INTO kindIn VALUES(20,'ʱ���¿�');
INSERT INTO kindIn VALUES(30,'����');

create table indexInRt(
    pid     INT PRIMARY KEY AUTO_INCREMENT,
    pname   VARCHAR(100),
    price   DOUBLE(6,2),
    pic     VARCHAR(100),
    kid     INT
);
SET NAMES GBK;
INSERT INTO indexInRt VALUES(null,"�������� 40s֧���ް´��� ������֯��...",48.0,"image/8774_1476884334731.jpg",60);
INSERT INTO indexInRt VALUES(null,"���߶�������ؼ۴�� ŷ�޸߶˽����ֻ� ...",59.0,"image/5299_1478249531833.jpg",70);
INSERT INTO indexInRt VALUES(null,"ǳ��ɫ�ֻ����＾ӡ�����п�ͨŮװ���ڻ���...",52.0,"image/800_1473503254871.jpg",80);
INSERT INTO indexInRt VALUES(null,"��ɫ�Ứ�������ϵ�ճ��",46.0,"image/190_20151130091545118331.jpg",90);
INSERT INTO indexInRt VALUES(null,"�������������ɫ֯�ỨС����",43.0,"image/5990_1469601070296.jpg",100);
INSERT INTO indexInRt VALUES(null,"��ɫ�ڻ������ﶬ��ɫ֯���л���Ůװ��˿��...",39.0,"image/1185_1453391092545.jpg",110);

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
INSERT INTO thirdfl VALUES(null,"��Ӫ���Ứ,ӡ��,����˿ë,��������","image/brands_t1.jpg","image/brand_tlogo1.jpg");
INSERT INTO thirdfl VALUES(null,"��Ӫ���޷�����,��������,˿������,ë������","image/brands_t2.jpg","image/brand_tlogo2.jpg");
INSERT INTO thirdfl VALUES(null,"��Ӫ����Ƥ��ϵ��,��/˫����Ƥ��,������Ƥ��","image/brands_t3.jpg","image/brand_tlogo3.jpg");
INSERT INTO thirdfl VALUES(null,"��Ӫ������,�޷�����","image/brands_t4.jpg","image/brand_tlogo4.jpg");
INSERT INTO thirdfl VALUES(null,"��Ӫ����֯ë��˳ë�ء��Ứ�ء�������","image/brands_t5.jpg","image/brand_tlogo5.jpg");
INSERT INTO thirdfl VALUES(null,"��Ӫ������ëƤ,��γ��ë��,��֯ë��","image/brands_t6.jpg","image/brand_tlogo6.jpg");
INSERT INTO thirdfl VALUES(null,"��Ӫ���ձ���������","image/brands_t7.jpg","image/brand_tlogo7.jpg");
INSERT INTO thirdfl VALUES(null,"��Ӫ�� �ձ������������","image/brands_t8.jpg","image/brand_tlogo8.jpg");

create table user(
    uid     INT PRIMARY KEY AUTO_INCREMENT,
    uname   VARCHAR(100),
    upwd    VARCHAR(20)
);
INSERT INTO user VALUES(null,'qiangqiang','123465qq');
//��ɫ ��ɫ ��ɫ ��ɫ ��ɫ ��ɫ ��ɫ
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
insert into productlist values(null,"��ɫ�Ứ�������ϵ���","����ʱ��","image/200117_20151211193324114770_y.jpg",55.00,"��ɫ","��","�Ϻ�");
insert into productlist values(null,"��Ҷ��ë��","��ɭʱ��ë��","image/2202_1468561051090.jpg",85.00,"��ɫ","��","����");
insert into productlist values(null,"ʱ��Ůװ����","����","image/9766_1461583580537.jpg",2080.00,"��ɫ","��","��ݸ");
insert into productlist values(null,"16������γ����о��Ůװͯװ����","������֯","image/5644_2015113011512473656_y.jpg",8.80,"��ɫ","��","����");
insert into productlist values(null,"��������  ����˿����ӡ��","�ں����","image/669_1453499238728.jpg",36.00,"��ɫ","��","��ݸ");
insert into productlist values(null,"����ʱ�к����Ứ��������������","��ׯ��֯ ����Ԫ����","image/7181_1462506902302.jpg",35.00,"��ɫ","��","����");
insert into productlist values(null,"���ڻ�ë������","��ӯë��","image/9582_1464918073779.jpg",135.00,"��ɫ","��","�Ϻ�");
insert into productlist values(null,"ŷ��ɴS_15","168��֯","image/912_1464933765705.jpg",7.80,"��ɫ","��","����");
insert into productlist values(null,"ǳ��ɫ�����廨�޷�������˿","��ɯ��֯","image/7465_20150814203007951667.jpg",53.00,"��ɫ","��","��ݸ");
insert into productlist values(null,"��ɫӡ���޷�����ȫ��","����ʱ��","image/200094_20151211193216457463_y.jpg",69.00,"��ɫ","��","�Ϻ�");
insert into productlist values(null,"��ɫ��ë��","��ɭʱ��ë��","image/3379_1496808327226.jpg",85.00,"��ɫ","��","�Ϻ�");
insert into productlist values(null,"��ɫ�����Ứ�������ϵ�ճ��","GTC","image/44679_20151111155303313744.jpg",50.75,"��ɫ","��","����");
insert into productlist values(null,"ʱ��Ůװɫ֯����","����","image/7168_1461581493067.jpg",599.00,"��ɫ","��","��ݸ");
insert into productlist values(null,"������������ ��֯�Ứӡ��D1601","�ں����","image/3700_1461307865713.jpg",45.00,"��ɫ","��","����");
insert into productlist values(null,"ʱ���Ứ�ο�����ȹ��������","��ׯ��֯ ����Ԫ����","image/669_1453499238728.jpg",0.28,"��ɫ","��","����");
insert into productlist values(null,"��ë�޸���","��ӯë��","image/3340_1462777377100.jpg",32.00,"��ɫ","��","�Ϻ�");
insert into productlist values(null,"��ɫ�����廨�޷�������˿","��ɯ��֯","image/7466_20150814203011775537.jpg",44.00,"��ɫ","��","�Ϻ�");
insert into productlist values(null,"��ɫӡ���޷����ϵ��޲�","����ʱ��","image/200019_20151211192828259292_y.jpg",105.00,"��ɫ","��","����");
insert into productlist values(null,"��ɫ���廯�����ϵ�����ճ","GTC","image/2202_1468561051090.jpg",50.75,"��ɫ","��","��ݸ");
insert into productlist values(null,"ʱ����֯�Ứ����","����","image/9703_1461583712253.jpg",564.00,"��ɫ","��","����");
insert into productlist values(null,"��ɫ�ڻ�������н������������ศ��","�Ͱ��������","image/669_1453499238728.jpg",0.28,"��ɫ","��","����");
insert into productlist values(null,"28����ƽ�޽��ӵ�о��28��ƽ����֯Ь������","������֯","image/5648_2015113011513379809_y.jpg",0.28,"��ɫ","��","��ݸ");

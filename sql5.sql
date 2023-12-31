create database	DLVN;
use DLVN;

create table MIEN
(
MAMN char(3) primary key,
TENMN varchar(30)
);

insert into MIEN
values
('M01','MienBac'),
('M02','MienTrung'),
('M03','MienNam');

create table TINHTHANH
(
MATT char(3) primary key,
TENTT varchar(30),
DS float,
DT float,
MAMN char(3)
);

insert into TINHTHANH
values
('001','An Giang',1908352,3536.7,'M03'),
('002','Ba Ria - Vung Tau',1148313,1980.8,'M03'),
('003','Bac Lieu',907236,2669,'M03'),
('004','Bac Giang',1803950,3851.4,'M01'),
('005','Bac Kan',313905,4860,'M01'),
('006','Bac Ninh',1368840,822.7,'M01'),
('007','Ben Tre',1288463,2394.6,'M03'),
('008','Binh Duong',2426561,2694.7,'M03'),
('009','Binh Dinh',1486918,6066.2,'M02'),
('010','Binh Phuoc',994679,6877,'M03'),
('011','Binh Thuan',1230808,7812.8,'M02'),
('012','Ca Mau',1194476,5294.8,'M03'),
('013','Cao Bang',530341,6700.3,'M01'),
('014','Can Tho',1235171,1439.2,'M03'),
('015','Da Nang',1134310,1284.9,'M02'),
('016','Dak Lak',1869322,13030.5,'M02'),
('017','Dak Nong',622168,6509.3,'M02'),
('018','Dien Bien',598856,9541,'M01'),
('019','Dong Nai',3097107,5905.7,'M03'),
('020','Dong Thap',1599504,3383.8,'M03'),
('021','Gia Lai',1513847,15510.8,'M02'),
('022','Ha Giang',854679,7292.5,'M01'),
('023','Ha Nam',852800,860.6,'M01'),
('024','Ha Noi',8053663,3358.9,'M01'),
('025','Ha Tinh',1288866,5990.7,'M02'),
('026','Hai Duong',1892254,1668.2,'M01'),
('027','Hai Phong',2028514,1522.5,'M01'),
('028','Hau Giang',733017,1621.8,'M03'),
('029','Hoa Binh',854131,4591,'M01'),
('030','TP Ho Chi Minh',8993082,2061,'M03'),
('031','Hung Yen',1252731,930.2,'M01'),
('032','Khanh Hoa',1231107,5137.8,'M02'),
('033','Kien Giang',1723067,6348.8,'M03'),
('034','Kon Tum',540438,9764.2,'M02'),
('035','Lai Chau',460196,9068.8,'M01'),
('036','Lang Son',781655,8310.2,'M01'),
('037','Lao Cai',730420,6364,'M01'),
('038','Lam Dong',1296606,9783.2,'M02'),
('039','Long An',1688547,4490.2,'M03'),
('040','Nam Dinh',1780393,1668,'M01'),
('041','Nghe An',3327791,16493.7,'M02'),
('042','Ninh Binh',982487,1387,'M01'),
('043','Ninh Thuan',590467,3355.3,'M02'),
('044','Phu Tho',1463726,3534.6,'M01'),
('045','Phu Yen',961152,5023.4,'M02'),
('046','Quang Binh',895430,8065.3,'M02'),
('047','Quang Nam',1495812,10574.7,'M02'),
('048','Quang Ngai',1231697,5135.2,'M02'),
('049','Quang Ninh',1320324,6177.7,'M01'),
('050','Quang Tri',632375,4739.8,'M02'),
('051','Soc Trang',1199653,3311.8,'M03'),
('052','Son La',1248415,14123.5,'M01'),
('053','Tay Ninh',1169165,4041.4,'M03'),
('054','Thai Binh',1860447,1570.5,'M01'),
('055','Thai Nguyen',1286751,33563.4,'M01'),
('056','Thanh Hoa',3640128,11114.7,'M02'),
('057','Thua Thien Hue',1128620,5048.2,'M02'),
('058','Tien Giang',1764185,2510.5,'M03'),
('059','Tra Vinh',1009168,2358.2,'M03'),
('060','Tuyen Quang',784811,5867.9,'M01'),
('061','Vinh Long',1022791,1475,'M03'),
('062','Vinh Phuc',1154154,1235.2,'M01'),
('063','Yen Bai',821030,6887.7,'M01');

create table BG
(
MATT char(3),
MAQG char(3),
primary key (MATT, MAQG)
);

insert into BG
values
('018','CHI'),
('018','LAO'),
('034','LAO'),
('034','CPC'),
('049','CHI'),
('036','CHI'),
('013','CHI'),
('022','CHI'),
('037','CHI'),
('035','CHI'),
('052','LAO'),
('056','LAO'),
('041','LAO'),
('025','LAO'),
('046','LAO'),
('050','LAO'),
('057','LAO'),
('047','LAO'),
('021','CPC'),
('016','CPC'),
('017','CPC'),
('010','CPC'),
('053','CPC'),
('039','CPC'),
('020','CPC'),
('001','CPC'),
('033','CPC');

create table LG
(
MATT char(3),
MALG varchar(30),
primary key (MATT,MALG)
);

insert into LG
values
('001','020,014,033'),
('002','011,019,030'),
('003','012,051'),
('004','024,006,026,036,049,055'),
('005','055,013,036,060'),
('006','004,024,026,031'),
('007','058,059,061'),
('008','010,019,030,053'),
('009','021,048,045'),
('010','017,008,038,019'),
('011','002,019,036,043'),
('012','005,033'),
('013','001,020,028,033,061'),
('014','004,022,037,060'),
('015','047,057'),
('016','021,032,045,036,017'),
('017','016,036,010'),
('018','052,035'),
('019','009,010,011,036,002,029'),
('020','001,061,013,058,039'),
('021','016,034,008,045,048'),
('022','014,038,060,063'),
('023','031,054,040,042'),
('024','055,062,030,003,006,044,031'),
('025','041,046'),
('026','003,006,046,054,031,027'),
('027','026,049,054'),
('028','013,061,005,033,051'),
('029','009,053,019,002,039,058'),
('030','042,044,023,024,052,056'),
('031','026,024,023,054,006'),
('032','045,016,036,043'),
('033','005,012,001,013,028'),
('034','047,021,048'),
('035','038,018,063,052'),
('036','032,043,017,019,016,010,011'),
('037','014,003,049,055,004'),
('038','022,063,035'),
('039','029,053,020,058'),
('040','054,042,023'),
('041','025,056'),
('042','023,030,040'),
('043','032,036,011'),
('044','024,030,062,063,052'),
('045','008,032'),
('046','050,025'),
('047','057,015,048,034'),
('048','047,034,021,008'),
('049','037,026,027,003'),
('050','046,057'),
('051','028,005,059'),
('052','035,063,056,030,044,018'),
('053','009,010,029,039'),
('054','026,027,031,023,040'),
('055','062,060,004,003,024,037'),
('056','042,052,030,041'),
('057','050,047,015'),
('058','039,029,020,061,007'),
('059','007,061,051'),
('060','022,004,055,062,062,044'),
('061','007,020,059,013,051,028,058'),
('062','060,055,044,024'),
('063','044,022,038,060,052');



 


create table S(
SNO varchar2(4),
SNAME varchar2(10),
STATUS number(2,0),
CITY varchar(10),
constraint PK_S primary key (SNO)
);

insert into S values('S1','����',20,'���');
insert into S values('S2','ʢ��',10,'����');
insert into S values('S3','������',30,'����');
insert into S values('S4','��̩ʢ',20,'���');
insert into S values('S5','Ϊ��',30,'�Ϻ�');

select * from S;
create table P(
PNO varchar2(4),
PNAME varchar2(10),
COLOR varchar2(2),
WEIGHT number(2,0),
constraint PK_P primary key (PNO)
);

insert into P values('P1','��ĸ','��',12);
insert into P values('P2','��˨','��',17);
insert into P values('P3','��˿��','��',14);
insert into P values('P4','��˿��','��',14);
insert into P values('P5','͹��','��',40);
insert into P values('P6','����','��',30);

select * from P;

create table J(
JNO varchar2(4),
JNAME varchar2(10),
CITY varchar2(5),
constraint PK_J primary key (JNO)
);

insert into J values('J1','����','����');
insert into J values('J2','���ɳ�','���');
insert into J values('J3','�촬��','���');
insert into J values('J4','������','��ɽ');
insert into J values('J5','���ߵ糧','����');
insert into J values('J6','�뵼�峧','�Ͼ�');
insert into J values('J7','һ��','����');

select * from J;

create table SPJ(
SNO varchar2(4),
PNO varchar2(4),
JNO varchar2(4),
QTY number(3,0),
constraint PK_SPJ primary key (SNO,PNO,JNO),
constraint FK_SPJ_TO_S foreign key (SNO) references S (SNO),
constraint FK_SPJ_TO_P foreign key (PNO) references P (PNO),
constraint FK_SPJ_TO_J foreign key (JNO) references J (JNO)
);

insert into SPJ values('S1','P1','J1',200);
insert into SPJ values('S1','P1','J3',100);
insert into SPJ values('S1','P1','J4',700);
insert into SPJ values('S1','P2','J2',100);
insert into SPJ values('S2','P3','J1',400);
insert into SPJ values('S2','P3','J2',200);
insert into SPJ values('S2','P3','J4',500);
insert into SPJ values('S2','P3','J5',400);
insert into SPJ values('S2','P5','J1',400);
insert into SPJ values('S2','P5','J2',100);
insert into SPJ values('S3','P1','J1',200);
insert into SPJ values('S3','P3','J1',200);
insert into SPJ values('S4','P5','J1',100);
insert into SPJ values('S4','P6','J3',300);
insert into SPJ values('S4','P6','J4',200);
insert into SPJ values('S5','P2','J4',100);
insert into SPJ values('S5','P3','J1',200);
insert into SPJ values('S5','P6','J2',200);
insert into SPJ values('S5','P6','J4',500);

select * from SPJ;

update P Set COLOR='��' Where COLOR='��';
select * from P;
update SPJ Set SNO='S3' Where SNO='S5' and JNO='J4' and PNO='P6';
select * from SPJ;

delete from SPJ where SNO='S2';
select * from SPJ;
delete  from S where SNO='S2';
select * from S;

insert into S values('S2','ʢ��',10,'����');
select * from S;

insert into SPJ values('S2','P4','J6',200);
select * from SPJ;

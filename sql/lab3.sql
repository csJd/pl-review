select * from s;                         /*s
SNO   SNAME                STATUS     CITY
----- -------------------- ---------- ----------
S1    ����                 20         ���
S2    ʢ��                 10         ����
S3    ������               30         ����
S4    ��̩ʢ               20         ���
S5    Ϊ��                 30         �Ϻ�*/

select * from p;/*p
PNO   PNAME                COLOR          WEIGHT
----- -------------------- ---------- ----------
P1    ��ĸ                 ��                 12
P2    ��˨                 ��                 17
P3    ��˿��               ��                 14
P4    ��˿��               ��                 14
P5    ͹��                 ��                 40
P6    ����                 ��                 30*/

select * from j;/*j
JNO   JNAME                CITY
----- -------------------- --------------------
J1    ����                 ����
J2    һ��                 ����
J3    ���ɳ�               ���
J4    �촬��               ���
J5    ������               ��ɽ
J6    ���ߵ糧             ����
J7    �뵼�峧             �Ͼ�*/

select * from spj;              /*SPJ
SNO   PNO   JNO          QTY
----- ----- ----- ----------
S1    P1    J1           200
S1    P1    J3           100
S1    P1    J4           700
S1    P2    J2           100
S2    P3    J1           400
S2    P3    J2           200
S2    P3    J4           500
S2    P3    J5           400
S2    P5    J1           400
S2    P5    J2           100
S3    P1    J1           200
S3    P3    J1           200
S4    P5    J1           100
S4    P6    J3           300
S4    P6    J4           200
S5    P2    J4           100
S5    P3    J1           200
S5    P6    J2           200
S5    P6    J4           500*/

select sname,city from s;
/*1.1
SNAME                CITY
-------------------- ----------
����                 ���
ʢ��                 ����
������               ����
��̩ʢ               ���
Ϊ��                 �Ϻ�*/

select pname,color,weight from p;
/*1.2
PNAME                COLOR          WEIGHT
-------------------- ---------- ----------
��ĸ                 ��                 12
��˨                 ��                 17
��˿��               ��                 14
��˿��               ��                 14
͹��                 ��                 40
����                 ��                 30*/

select distinct pno from spj where sno = 'S1';
/*1.3
PNO
-----
P1
P2*/

select pname, qty from p,spj
where jno = 'J2' and spj.pno = p.pno;
/* 1.4
PNAME                       QTY
-------------------- ----------
��˨                        100
��˿��                      200
͹��                        100
����                        200*/


select distinct spj.pno from spj, s
where spj.sno = s.sno and city = '�Ϻ�';
/*1.5
PNO
-----
P2
P3
P6*/

select distinct spj.jno from spj,s,j
where spj.sno = s.sno and s.city = '�Ϻ�';
/*1.6
JNO
-----
J1
J2
J4*/

select jno from j
where not exists 
(
	select spj.* from spj,s
	where s.sno = spj.sno and j.jno = spj.jno and s.city = '���'
);
/*1.7
JNO
-----
J5
J6
J7
*/


select distinct sno from spj
where jno = 'J1';
/*2.1
SNO
-----
S1
S2
S3
S4
S5*/

select distinct sno from spj
where jno = 'J1' and pno = 'P1';
/*2.2
SNO
-----
S1
S3
*/


select distinct sno from spj, p
where jno = 'J1' and p.pno = spj.pno and p.color = '��';
/*2.3
SNO
-----
S1
S3*/


select jno from j
where not exists
(
	select spj.* from spj,s,p
	where spj.sno = s.sno
	and spj.jno = j.jno
	and spj.pno = p.pno
	and s.city = '���'
	and p.color = '��'
);
/*2.4
JNO
-----
J2
J5
J6
J7*/


select distinct jno from spj a
where not exists
(
	select * from spj b
	where b.sno = 'S1' and not exists
	(
		select * from spj c
		where c.jno = a.jno and b.pno = c.pno
	)
);
/* 2.5
JNO
-----
J4*/


create view spq (sno, pno, qty)
as
select sno,pno,qty from spj, j
where spj.jno = j.jno and j.jname = '����';

select distinct pno,
(
	select sum(qty) 
	from spq
	where b.pno = a.pno
) qty
from spq b;
/*3.1
PNO          QTY
----- ----------
P1           400
P3           800
P5           500*/

select * from spq where sno = 'S1';
/*3.2
SNO   PNO          QTY
----- ----- ----------
S1    P1           200
*/

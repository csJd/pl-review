insert into s values ('S1', '����', '20', '���');
insert into s values ('S2', 'ʢ��', '10', '����');
insert into s values ('S3', '������', '30', '����');
insert into s values ('S4', '��̩ʢ', '20', '���');
insert into s values ('S5', 'Ϊ��', '30', '�Ϻ�');
select * from s;

insert into p values ('P1', '��ĸ', '��', 12);
insert into p values ('P2', '��˨', '��', 17);
insert into p values ('P3', '��˿��', '��', 14);
insert into p values ('P4', '��˿��', '��', 14);
insert into p values ('P5', '͹��', '��', 40);
insert into p values ('P6', '����', '��', 30);
select * from p;

insert into j values ('J1', '����', '����');
insert into j values ('J2', 'һ��', '����');
insert into j values ('J3', '���ɳ�', '���');
insert into j values ('J4', '�촬��', '���');
insert into j values ('J5', '������', '��ɽ');
insert into j values ('J6', '���ߵ糧', '����');
insert into j values ('J7', '�뵼�峧', '�Ͼ�');
select * from j;

insert into spj values ('S1', 'P1', 'J1', 200);
insert into spj values ('S1', 'P1', 'J3', 100);
insert into spj values ('S1', 'P1', 'J4', 700);
insert into spj values ('S1', 'P2', 'J2', 100);
insert into spj values ('S2', 'P3', 'J1', 400);
insert into spj values ('S2', 'P3', 'J2', 200);
insert into spj values ('S2', 'P3', 'J4', 500);
insert into spj values ('S2', 'P3', 'J5', 400);
insert into spj values ('S2', 'P5', 'J1', 400);
insert into spj values ('S2', 'P5', 'J2', 100);
insert into spj values ('S3', 'P1', 'J1', 200);
insert into spj values ('S3', 'P3', 'J1', 200);
insert into spj values ('S4', 'P5', 'J1', 100);
insert into spj values ('S4', 'P6', 'J3', 300);
insert into spj values ('S4', 'P6', 'J4', 200);
insert into spj values ('S5', 'P2', 'J4', 100);
insert into spj values ('S5', 'P3', 'J1', 200);
insert into spj values ('S5', 'P6', 'J2', 200);
insert into spj values ('S5', 'P6', 'J4', 500);
select * from spj;


/*update p set color = '��' where color = '��';

update spj set sno = 'S3' where sno = 'S5' and pno = 'P6' and jno = 'J4';

insert into spj values ('S2', 'P4', 'J6', 200);

delete from spj where sno = 'S2';
delete from s where sno = 'S2';*/



CREATE TABLE Member_test(
	mno number,
	id varchar2(30),
	pw varchar2(30),
	name varchar2(30),
	gender varchar2(10),
	birthday varchar2(30),
	tel varchar2(30),
	email varchar2(30),
	addr varchar2(50),
	reg_date date,
	del char(1),
	code number
);

drop table member_test

insert into Member_test values(1,'id','1234','홍길동','남자',sysdate,'010-1111-1111','k@k.com','서울 강남구',sysdate,'n',1111)
select * from member_test

select * from member_test where id='id';

drop table fboard;
create table fboard(
	bno number primary key,
	subject varchar2(50) not null,
	writer varchar2(20) not null,
	content varchar2(500) not null,
	passwd varchar2(30) not null,
	readcount number,
	reg_date date	
);

select * from fboard;
insert into fboard values(2,'제목','작성자','내용','123',0,sysdate);
insert into fboard values(82,'제목','작성자','내용','123',0,sysdate);
insert into fboard values(83,'제목','작성자','내용','123',0,sysdate);
insert into fboard values(84,'제목','작성자','내용','123',0,sysdate);
insert into fboard values(85,'제목','작성자','내용','123',0,sysdate);
insert into fboard values(86,'제목','작성자','내용','123',0,sysdate);
insert into fboard values(87,'제목','작성자','내용','123',0,sysdate);
insert into fboard values(88,'제목','작성자','내용','123',0,sysdate);
insert into fboard values(89,'제목','작성자','내용','123',0,sysdate);
insert into fboard values(90,'제목','작성자','내용','123',0,sysdate);
insert into fboard values(91,'제목','작성자','내용','123',0,sysdate);
insert into fboard values(92,'제목','작성자','내용','123',0,sysdate);
insert into fboard values(93,'제목','작성자','내용','123',0,sysdate);
insert into fboard values(94,'제목','작성자','내용','123',0,sysdate);
insert into fboard values(95,'제목','작성자','내용','123',0,sysdate);
insert into fboard values(96,'제목','작성자','내용','123',0,sysdate);
insert into fboard values(97,'제목','작성자','내용','123',0,sysdate);
insert into fboard values(98,'제목','작성자','내용','123',0,sysdate);
insert into fboard values(99,'제목','작성자','내용','123',0,sysdate);
insert into fboard values(100,'제목','작성자','내용','123',0,sysdate);
insert into fboard values(101,'제목','작성자','내용','123',0,sysdate);

select * from (select a.*, rowNum rn from (select * from fboard order by bno ) a) where rn between 1 and 10
DELETE FROM fboard WHERE bno=2

create table freplyboard (
rno number primary key,
rbno number not null references fboard(bno) on delete cascade,
replytext varchar2(500) not null,
replyer varchar2(50) not null,
regdate date not null
);

drop table freplyboard;
insert into freplyboard values (5,2,'ANGKIMODDI','SONG',sysdate);
insert into freplyboard values (6,2,'ANGKIMODDI','SONG',sysdate);
insert into freplyboard values (7,2,'왜또넣어','42345',sysdate);
insert into freplyboard values (8,2,'ANGKIMODDI','SONG',sysdate);

select * from freplyboard where rno=1 order by rno
select * from freplyboard
DELETE FROM freplyboard WHERE	rno=26;
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

drop table board;
create table board(
	bno number primary key,
	subject varchar2(50) not null,
	writer varchar2(20) not null,
	content varchar2(500) not null,
	passwd varchar2(30) not null,
	readcount number,
	reg_date date	
);

select * from board;
insert into board values(12,'제목','작성자','내용','123',0,sysdate);
insert into board values(13,'제목','작성자','내용','123',0,sysdate);
insert into board values(14,'제목','작성자','내용','123',0,sysdate);
insert into board values(15,'제목','작성자','내용','123',0,sysdate);
insert into board values(16,'제목','작성자','내용','123',0,sysdate);
insert into board values(17,'제목','작성자','내용','123',0,sysdate);
insert into board values(18,'제목','작성자','내용','123',0,sysdate);
insert into board values(19,'제목','작성자','내용','123',0,sysdate);
insert into board values(20,'제목','작성자','내용','123',0,sysdate);
insert into board values(21,'제목','작성자','내용','123',0,sysdate);
insert into board values(22,'제목','작성자','내용','123',0,sysdate);
select * from (select a.*, rowNum rn from (select * from board order by bno ) a) where rn between 1 and 10
create table replyBoard (
rno number primary key,
rbno number not null references board(bno),
replytext varchar2(500) not null,
replyer varchar2(50) not null,
regdate date not null
);
insert into REPLYBOARD values (1,255,'ANGKIMODDI','SONG',sysdate);
insert into REPLYBOARD values (2,255,'ANGKIMODDI','SONG',sysdate);
insert into REPLYBOARD values (3,255,'왜또넣어','42345',sysdate);

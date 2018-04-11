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
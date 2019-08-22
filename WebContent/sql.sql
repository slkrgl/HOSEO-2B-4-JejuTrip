show databases;
drop table member;
create table member(
	id varchar(50) not null primary key,
	passwd varchar(16) not null,
	name varchar(10) not null,
	reg_date datetime not null
);

insert into member(id,passwd,name,reg_date)
	values('bbibbi@gmail.com','rnrmffid','JongEon',now());
	
	insert into member(id,passwd,name,reg_date)
	values('jekim@shoseo.ac.kr','rnrmffid','金宗彦',now());
	
	insert into member(id,passwd,name,reg_date)
	values('kafka@naver.com','0817','카프카',now());
	
select * from member;


create table member(
	id varchar(50) not null primary key,
	name varchar(20) not null,
	passwd varchar(20)  not null,
	phone varchar(13)  not null,
	email varchar(50)  not null,
	address1 varchar(50) not null,
	address2 varchar(50) not null
);

insert into member(id,name,passwd,phone,email,address1,address2)
	values('dkdlel','김수현','123456','010-5011-4092','tngusdlek2@naver.com','서울 강서구 화곡1동','서울 강서구 화곡1동 424-27');
	
insert into member(id,name,passwd,phone,email,address1,address2)
	values('dkdlel1','김수현','123456','010-5011-4092','tngusdlek2@naver.com','서울 강서구 화곡1동','서울 강서구 화곡1동 424-27');
	
create table zipcode(
	ZIPCODE varchar(100) not null,
	SIDO varchar(100) not null,
	GUGUN varchar(200) not null,
	DONG varchar(200) not null,
	RI varchar(500) not null,
	BUNJI varchar(300) not null,
	SEQ int null
);

select * from zipcode;

drop table zipcode;
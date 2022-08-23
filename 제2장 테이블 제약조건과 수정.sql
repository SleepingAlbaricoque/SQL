# 날짜 : 2022.08.23
# 이름 : 조수빈
# 내용 : 제2장 테이블 제약조건과 수정

# 실습 2-1

create table `User2` (
	`uid` varchar(20) primary key, #중복 불허, 테이블 당 하나만 쓰는 것이 권고 사항
	`name` varchar(10), 
	`hp` char(13), 
	`age` int
);

# 실습 2-2
insert into `User2` values ('a101', '김유신', '010-1234-1111', 25);
insert into `User2` values ('a102', '김춘추', '010-1234-1002', 23);
insert into `User2` values ('a103', '김유신', '010-1234-1111', 25);


# 실습 2-3
create table `User3` (
	`uid` varchar(20) primary key, 
	`name` varchar(10), 
	`hp` char(13) unique, 
	`age` int
);

# 실습 2-4
insert into `User3` values ('a101', '김유신', '010-1234-1111', 25);
insert into `User3` values ('a102', '김춘추', '010-1234-1002', 23);
insert into `User3` values ('a103', '김유신', '010-1234-1003', 25);

# 실습 2-5
create table `Parent` (
	`pid` varchar(10) primary key,
    `name` varchar(10),
    `hp` char(13) unique
);
create table `Child` (
	`cid` varchar(10) primary key,
    `name` varchar(10),
    `hp` char(13) unique,
    `pid` varchar(10),
    foreign key (`pid`) references `parent` (`pid`)
);

# 실습 2-6
insert into `parent` values ('p101', '이성계', '010-1234-1111');
insert into `child` values ('c101', '이방원', '010-1234-1001', 'p101');

# 실습 2-7
create table `User4` (
	`seq` int primary key auto_increment,
	`name` varchar(10),
    `gender` tinyint,
    `age` tinyint,
    `addr` varchar(255)
);

# 실습 2-8
insert into `User4` (`name`, `gender`, `age`, `addr`) values ('김유신', 1, 25, '김해시');
insert into `User4` (`name`, `gender`, `age`, `addr`) values ('김춘추', 1, 23, '경주시');
insert into `User4` (`name`, `gender`, `age`, `addr`) values ('신사임당', 2, 27, '강릉시');
delete from `user4` where `name`='신사임당';

# 실습 2-9
create table `User5` (
	`name` varchar(10) not null,
    `gender` tinyint,
    `age` tinyint default 1,
    `addr` varchar(255)
);

# 실습 2-10
insert into `user5` set `name`='김유신';
insert into `user5` set `name`='김춘추', `addr`='부산시';

# 실습 2-11
# 실습 2-12
# 실습 2-13
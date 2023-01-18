-- Database : 데이터를 저장 및 관리하는 시스템 소프트웨어 
-- DBMS (Database Management System) : 데이터베이스를 수월하게 관리해주는 소프트웨어
-- RDB (Reration Database) 관계형 데이터베이스 : Oravle , Mysql , MSsql
-- CRUD  (Create Read Update Delete) 프로그램의 가장 기본이 되는 요건

-- SQL (Structed Query Language)
-- DB에 명령을 내릴 수 있는 프로그램 언어
-- 질의 언어라고 되어 있지만 조작도 가능하다.

-- select : 조회
-- 구문 : select 열1,열2 from 테이블 명

select * from PERSON;
desc PERSON;

insert into PERSON VALUES('김수현',null,'81/10/07');
-- update person set height=180.0 where name='김수현';

create table PERSON(
    NAME VARCHAR2(20),
    HEIGHT NUMBER,
    BIRTH DATE
);

-- where : 조건절
select * 
from person
where height >= 170;

select *
from person
where name='홍길동';

-- null값 판별은 is null 또는 is not null
select *
from person
where height is null;

-- date 는 문자열이다.
-- 보조 구문이 많아지면 한 줄로 길어지고 가독성이 떨어진다.

select * 
from person
where birth < '00/01/01' 
and height is not null;


-- order by  : 정렬
select * from PERSON
ORDER BY height asc;
-- asc : 오름차순
select * from PERSON
ORDER BY height desc;
-- desc : 내림차순

select *
from person
ORDER By name;

select * 
from person
order by birth;


select *
from person
where birth >= '00/01/01'
order by birth;

drop table PERSON;
-- 커밋 명령어
commit;
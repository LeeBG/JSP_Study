-- 1. 테이블 만들기
-- name(VA)
create table student (
    name VARCHAR2(20),
    kor NUMBER,
    eng NUMBER,
    mat NUMBER
);

desc student;
-- 2. 1번 테이블에 데이터를 3개 정도 추가
insert into student VALUES('홍길동',100,60,86);
insert into student VALUES('장보고',90,80,86);
insert into student VALUES('강찬희',70,80,94);

-- 3. 추가 후 국어 점수가 높은 순으로 정렬해서 출력
select name,kor
from student
order by kor desc;

-- 4. 학생 한명의 점수를 수정 후 수학 점수가 낮은 순로 정렬해서 출력

update student set mat=70 where name='장보고';

select name,mat
from student
order by mat asc;

-- 5. 학생 한명의 정보를 제거
delete from student where name='장보고';

select * from student;
rollback;
commit;
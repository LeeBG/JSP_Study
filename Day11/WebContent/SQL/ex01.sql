-- 실습용 일반 계정 생성
create user c##itbank identified by it;
-- 일반 계정에 DB권한을 부여
grant connect, resource, dba to c##itbank;


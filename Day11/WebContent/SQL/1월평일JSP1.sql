-- insert

select * from person;

insert into person values('박진희',170.1,'05/07/16');

insert into person(name,birth) values('신세경','85/11/02');

insert into person(height,birth) values(156.6,'03/03/03');

commit;
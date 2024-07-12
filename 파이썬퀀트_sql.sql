show databases;
use sql_quant;

# 열이름 데이터형태 제약
create table goods
(
# char(4) : 문자수 4개 , null 허용하지 않음
goods_id char(4) not null,
# varchar(100) : 문자를 100개까지 저장
goods_name varchar(100) not null,
goods_classify varchar(32) not null,
sell_price integer,
buy_price integer,
register_date date,
# 테이블 제약
# primary key : 기본키(고유 데이터 구분)
primary key (goods_id)
);

# goods 테이블 column 추가
alter table goods add column goods_name_eng varchar(100);

# goods 테이블 column 제거
alter table goods drop column goods_name_eng;

insert into goods values('0001', '티셔츠', '의류', 1000, 500, '2020-09-20');
insert into goods values('0002', '펀칭기', '사무용품', 500, 320, '2020-09-11');
insert into goods values('0003', '와이셔츠', '의류', 4000, 2800, null);
insert into goods values('0004', '식칼', '주방용품', 3000, 2800, '2020-09-20');
insert into goods values('0005', '압력솥', '주방용품', 6800, 5000, '2020-01-15');
insert into goods values('0006', '포크', '주방용품', 500, null, '2020-09-20');
insert into goods values('0007', '도마', '주방용품', 880, 790, '2020-04-28');
insert into goods values('0008', '볼펜', '사무용품', 100, null, '2020-11-11');

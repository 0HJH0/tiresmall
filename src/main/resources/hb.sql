create table branch (
b_id varchar2(20 char) primary key,
b_sortation varchar2(20 char) not null,
b_area varchar2(30 char) not null,
b_addr varchar2(100 char) not null,
b_name varchar2(20 char) not null,
b_time varchar2(50 char) not null,
b_service varchar2(100 char) not null,
b_mapdata varchar2(2000 char) not null,
b_manager varchar2(20 char) ,
b_managernumber varchar2(13 char) ,
b_branchname varchar2(20 char) ,
b_branchnumber varchar2(13 char) ,
b_cr varchar2(20 char)  ,
b_email varchar2(30 char),	
b_file varchar2(2000 char)
);

insert into branch values('id','직영점','성남','중원구','현식','평일낮','한국타이어','대충지도','1','2','3','4','5','6','a.jpg');
insert into branch values('id2','제휴장착점','서울','강남구','민지','일요일','서울타이어','섬세지도','1','2','3','4','5','6','a.jpg');

오재호 가데이터 ----------------------------------
insert into branch values('1','직영점','대전광역시서구','신갈마로 83 (갈마동)','타이어쇼핑몰','평일 : 08:30 ~ 19:00 / 토요일 08:30 ~ 16:00 (일요일 휴무)','한국타이어,넥센타이어,금호타이어,미쉐린타이어,컨티넨탈타이어,피넬리타이어,휠얼라인먼트,경정비,수입차정비 / 본사직영매장','36.3417632, 127.3663178','1','042-545-8008','3','4','5','6');
insert into branch values('2','제휴장착점','대전광역시유성구','죽동 707-2번지','타이어테크','평일 : 08:30 ~ 19:00 / 토요일 08:30 ~ 16:00 (일요일 휴무)','한국타이어, 금호타이어,넥센타이어, 타이어렌탈전문점, 휠얼라이먼트, 합성오일 전문점','36.369228, 127.338054','1','010-4417-2220','3','4','5','6');
insert into branch values('3','제휴장착점','충청남도논산시','시민로 262 논산타이어 (내동)','타이어테크 시청점','평일 : 08:30 ~ 19:00 / 토요일 08:30 ~ 16:00 (일요일 휴무)','한국타이어,넥센타이어,금호타이어,미쉐린타이어,컨티넨탈타이어,피넬리타이어,휠얼라인먼트,경정비,수입차정비 / 본사직영매장','36.1900937, 127.0954606','1','2','3','4','5','6');
insert into branch values('4','제휴장착점','충청남도논산시','연무읍 왕릉로13번길 38 타이어테크 연무점','타이어테크 연무점','평일 : 08:30 ~ 19:00 / 토요일 08:30 ~ 16:00 (일요일 휴무)','한국타이어,넥센타이어,금호타이어,미쉐린타이어,컨티넨탈타이어,피넬리타이어,휠얼라인먼트,경정비,수입차정비 / 본사직영매장','36.1188693, 127.0984388','1','2','3','4','5','6');
insert into branch values('5','제휴장착점','충청남도논산시','해월로252 타이어테크 반월점 (로얄카)','타이어테크 반월점 (로얄카)','평일 : 08:30 ~ 19:00 / 토요일 08:30 ~ 16:00 (일요일 휴무)','한국,금호,넥센타이어,각종수입타이어,타이어 렌탈,휠얼라이먼트,경정비','36.208517, 127.0937896','1','010-7267-2220','3','4','5','6');

alter table branch modify b_managernumber varchar2(13char);

delete branch;

drop table branch;

select * from branch;

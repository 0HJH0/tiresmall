--이벤트
create table event(
    e_no number(5) primary key,                 -- pk
    e_title varchar2 (100 char) not null,       -- 제목
    e_date date default sysdate not null ,      -- 업로드 날짜
    e_content varchar2 (100 char) not null,     -- 내용
    e_duration date not null,                   -- 기간(마감일)
    e_popup number(1) not null,                 -- 팝업 유무 (1/0)
    e_mainimg varchar2 (2000 char) not null,    -- 메인 이미지
    e_detailimg varchar2 (4000 char) not null,  -- 상세 이미지
    e_status varchar2 (5 char) not null         -- 상태 (진행중/마감)
);
create sequence event_seq;
--기간(마감일)관련수정필요
insert into event values(event_seq.nextval, '이벤트제목', sysdate, '이벤트내용', sysdate, 1, 'eventlogo.png', 'eventdetail.png', '진행중');
insert into event values(event_seq.nextval, '이벤트제목', sysdate, '이벤트내용', sysdate, 1, 'eventone.png', 'eventdetail.png', '진행중'); 
insert into event values(event_seq.nextval, '이벤트제목', sysdate, '이벤트내용', sysdate, 1, 'eventtwo.png', 'eventdetail.png', '진행중');
select * from event;
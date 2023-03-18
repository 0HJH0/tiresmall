--���̵�
create table auth_user(
    u_no number(5) primary key,
    u_id varchar2(20 char) UNIQUE NOT NULL,
    u_logintype number(2) not null
);
create sequence auth_user_seq;
insert into auth_user values(auth_user_seq.nextval, 'id1', 1);
insert into auth_user values(auth_user_seq.nextval, 'id2', 1);
select * from auth_user;
drop table auth_user;

--�н�����
create table auth_password(
    pw_no number(5) primary key,
    u_no number(5) NOT NULL,
    pw_salt varchar2(20 char) not null,
    pw_password varchar2(20 char) not null,
    pw_update date not null, 
    CONSTRAINT fk_code FOREIGN KEY(u_no)
    REFERENCES auth_user(u_no) ON DELETE CASCADE
);
create sequence auth_password_seq;
insert into auth_password values(auth_password_seq.nextval, 1, 'test', 'pw1', sysdate);
insert into auth_password values(auth_password_seq.nextval, 2, 'test', 'pw2', sysdate);
select * from auth_password;
drop table auth_password;

--ȸ������
create table auth_userInfo(
	i_no number(5) primary key,
    u_no number(5) NOT NULL,
    i_name varchar2(10 char) not null,
    i_phonenum varchar2(15 char) UNIQUE NOT NULL,
    i_newdate date not null,
    i_grade number(2) not null,
    i_email VARCHAR(25) NOT NULL,
    CONSTRAINT fk_info FOREIGN KEY(u_no)
    REFERENCES auth_user(u_no) ON DELETE CASCADE
);
create sequence auth_userInfo_seq;
insert into auth_userinfo values(auth_userinfo_seq.nextval, 1, '�̸��ϳ�', 01011112222, sysdate, 1, 'emailone');
insert into auth_userinfo values(auth_userinfo_seq.nextval, 2, '�̸���', 01033334444, sysdate, 1, 'emailtwo');
select * from auth_userinfo;
drop table auth_userinfo;

--1:1����
create table qna (
    q_no number(5) primary key,
    q_title varchar2(200 char) not null,
    q_txt varchar2(2000 char) not null,
    q_date date not null,
    q_id varchar2(20 char) not null,
    q_reply_has number(1) default 0 not null,
    constraint qna_constraint
    foreign key (q_id)
    references auth_user (u_id)
    on delete cascade
);
create sequence qna_seq;
insert into qna values(qna_seq.nextval, '����1', '����1', sysdate, 'id1', default);
insert into qna values(qna_seq.nextval, '����2', '����2', sysdate, 'id1', default);
insert into qna values(qna_seq.nextval, '����3', '����3', sysdate, 'id1', default);
select * from qna;
drop table qna;

--1:1���Ǵ��
create table qna_reply (
    q_reply_no number(5) primary key,
    q_reply_txt varchar2(2000char) not null,
    q_reply_date date not null,
    q_reply_board_no number(5) not null,
    constraint qna_reply_constraint
    foreign key (q_reply_board_no)
    references qna (q_no)
    on delete cascade
);
create sequence qna_reply_seq;
insert into qna_reply values(qna_reply_seq.nextval, '�亯�Դϴ�', sysdate, 21);
insert into qna_reply values(qna_reply_seq.nextval, '�亯�Դϴ�', sysdate, 20);
insert into qna_reply values(qna_reply_seq.nextval, '�亯�Դϴ�', sysdate, 19);
select * from qna_reply;
drop table qna_reply;

--���� ��������
/*
create table ask_account (
aa_id varchar2(20 char) primary key,
aa_pw varchar2(20 char) not null
);
insert into ask_account values('id', 'pw');
select * from ask_account;
drop table ask_account;
*/

--��ȸ���ֹ� ��������
/*
create table ask_nonmember (
an_number number(20) primary key
);
insert into ask_nonmember values('1');
select * from ask_nonmember;
drop table ask_nonmember;
*/

--1:1���� ��������
/*
create table ask (
a_number number(5) primary key,
a_owner_fk varchar2(20 char) not null,
a_sortation varchar2(20 char) not null,
a_title varchar2(20 char) not null,
a_text varchar2(2000 char) not null,
a_date date not null,
a_status varchar2(20 char) not null
);
create sequence ask_seq;
alter table ask
add constraint ask_constraint
foreign key (a_owner_fk)
references ask_account (aa_id)
on delete cascade;
insert into ask values(ask_seq.nextval, 'id', '��ǰ', '��ǰ�����Դϴ�', '��ǰ���ǳ���', sysdate, '�亯���');
insert into ask values(ask_seq.nextval, 'id', '����', '���������Դϴ�', '�������ǳ���', sysdate, '�亯���');
insert into ask values(ask_seq.nextval, 'id', '����', '���������Դϴ�', '�������ǳ���', sysdate, '�亯���');
insert into ask values(ask_seq.nextval, 'id', '��Ÿ', '��Ÿ�����Դϴ�', '��Ÿ���ǳ���', sysdate, '�亯���');
select * from ask;
drop table ask;
*/

--1:1���Ǵ�� ��������
/*
create table ask_reply (
ar_number number(5) primary key,
ar_number_fk number(5) not null,
ar_text varchar2(2000 char) not null,
ar_date date not null,
    constraint ask_reply_constraint
    foreign key (ar_number_fk)
    references ask (a_number)
    on delete cascade
);
create sequence ask_reply_seq;
insert into ask_reply values(ask_reply_seq.nextval, 121, '����', sysdate);
select * from ask_reply;
drop table ask_reply;
*/
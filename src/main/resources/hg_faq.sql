--FAQ(�ۼ���)
create table faq (
    f_no number(5) primary key,
    f_sortation varchar2(20 char) not null,
    f_title varchar2(100 char) not null,
    f_txt varchar2(2000 char) not null,
    f_date date not null
)
create sequence faq_seq;
insert into faq values(faq_seq.nextval, 'ȸ��', '�׽�Ʈ�� �μ�Ʈ', '�׽�Ʈ�� ���� txt ���빰�Դϴ�', sysdate);
select * from faq;
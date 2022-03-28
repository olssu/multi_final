create table itp_member (
  m_name varchar(200) primary key,
  m_email varchar(300) not null,
  m_passwd varchar(300) not null,
  m_date date default (current_date),
  m_role int default 1 
);

insert itp_member values ("manager", "itpmanager@naver.com", "itp123", default , 0);
insert itp_member values ("abc", "abc@naver.com", "abc123", default, default);

select * from itp_member;

commit;
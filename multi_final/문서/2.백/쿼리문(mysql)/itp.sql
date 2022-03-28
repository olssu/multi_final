    ----------------------------------------------- 기술
    create table tech(
    no int primary key,
    title varchar(100),
    subtitle varchar(100),
    content varchar(1000),
    img varchar(2000));
    drop table tech; 
    commit;
    
    select * from tech where no="1";
    
    insert into tech values("1","기술1번제목","기술1번소제목","기술1번내용","https://t1.daumcdn.net/cfile/tistory/24457C4F58663DD011");
    commit;
    select * from tech;
    insert into tech values(2,"기술2번제목","기술2번소제목","기술2번내용","https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Unofficial_JavaScript_logo_2.svg/1200px-Unofficial_JavaScript_logo_2.svg.png");
    commit;
  --------------------------------------------- 공지사항
    create table itp_notice(
    n_no int primary key auto_increment,
    n_title varchar(200) not null,
    n_content varchar(3000) not null,
    n_date datetime );
    
    drop table itp_notice;
    
    insert into itp_notice values(1,"공지사항제목1","공지사항입니다",now());
    insert into itp_notice values(2,"공지사항제목2","공지드립니다",now());
    select * from itp_notice;
    commit;
    
    drop table itp_group;
 --------------------------------------------------------- 모임찾기   
    create table itp_group(
    g_no int primary key auto_increment not null,
    g_name varchar(200) not null,
    g_title varchar(200) not null,
    g_subtitle varchar(200) not null,
    g_content varchar(3000) not null,
    g_img varchar(3000) not null,
    g_tag varchar(200) not null );
    
    commit;
    select * from itp_group;
    
insert into itp_group values(1,'김자바','java프로젝트 구해요!','초보자도 환영합니다!','java프로젝트 중급 1명 초급1명 구하고 있습니다.','https://blog.kakaocdn.net/dn/cZsyTw/btq0u5VBWge/F7xmauYA6r8nnbXSz2vJhK/img.png','프로젝트');
insert into itp_group values(2,'dddd','프로젝트 구해요!','같이 화이팅해요!','java프로젝트구합니다.','https://blog.kakaocdn.net/dn/cZsyTw/btq0u5VBWge/F7xmauYA6r8nnbXSz2vJhK/img.png','프로젝트');
insert into itp_group values(3,'gggg','프로젝트 구해요!','같이 화이팅해요!','java프로젝트구합니다.','https://blog.kakaocdn.net/dn/cZsyTw/btq0u5VBWge/F7xmauYA6r8nnbXSz2vJhK/img.png','프로젝트');
insert into itp_group values(4,'bbbb','함께해요!','같이 화이팅해요!','java프로젝트구합니다.','https://blog.kakaocdn.net/dn/cZsyTw/btq0u5VBWge/F7xmauYA6r8nnbXSz2vJhK/img.png','프로젝트');
insert into itp_group values(5,'sksksk','프로젝트 구해요!','같이 화이팅해요!','java프로젝트구합니다.','https://blog.kakaocdn.net/dn/cZsyTw/btq0u5VBWge/F7xmauYA6r8nnbXSz2vJhK/img.png','프로젝트');
insert into itp_group values(6,'ㄱㄱㄱ','화이팅!','같이 화이팅해요!','java프로젝트구합니다.','https://blog.kakaocdn.net/dn/cZsyTw/btq0u5VBWge/F7xmauYA6r8nnbXSz2vJhK/img.png','프로젝트');
insert into itp_group values(7,'ㅠㅠㅠ','프로젝트 구해요!','같이 화이팅해요!','java프로젝트구합니다.','https://blog.kakaocdn.net/dn/cZsyTw/btq0u5VBWge/F7xmauYA6r8nnbXSz2vJhK/img.png','프로젝트');

---------------------------------------------- 사용자
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

-------------------------------------------- 소통공간
create table itp_com(
c_no int primary key auto_increment,
c_name varchar(200) not null,
c_title varchar(200) not null,
c_content varchar(3000) not null,
c_date date default (current_date) );

insert into itp_com values(1,'abc','소통곤간글1','소통공간내용1',default);
insert into itp_com values(2,'bbb','소통공간글2','소통공간내용1',default);
insert into itp_com values(3,'가가가','소통공간글3','소통공간내용1',default);
insert into itp_com values(4,'dji','소통공간글4','소통공간내용1',default);
insert into itp_com values(5,'bkd','소통공간글5','소통공간내용1',default);
insert into itp_com values(6,'qqq','소통공간글6','소통공간내용1',default);
insert into itp_com values(7,'nnn','소통공간글7','소통공간내용1',default);
insert into itp_com values(8,'pan','소통공간글8','소통공간내용1',default);

-------------------------------------------------- 댓글
create table itp_reply(
r_rno int primary key auto_increment,
r_no int not null,
r_content varchar(3000) not null,
r_name varchar(200) not null,
r_date date default(current_date),
foreign key(r_rno) references itp_com(c_no) on DELETE CASCADE);

insert into itp_reply values(1,1,'1번글댓글','aaa',default);
insert into itp_reply values(2,2,'1번댓글2','bbb',default);
insert into itp_reply values(3,1,'1번댓글2','bbb',default);
insert into itp_reply values(4,5,'1번댓글2','ccc',default);
insert into itp_reply values(5,6,'1번댓글2','eee',default);
select * from itp_com;
select * from itp_reply;
drop table itp_com;
drop table itp_reply;
commit;

select * from itp_com;


select * from itp_group;
drop table itp_group;
select count(*) from itp_group;
select * from itp_group where g_no between (select count(*) from itp_group)-3 and (select count(*) from itp_group);

select c.*,r.* from itp_com c right outer join  itp_reply r on c.c_no=r.r_no;

    
    
    
    
    
    
    
    

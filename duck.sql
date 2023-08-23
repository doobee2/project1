-- 데이터베이스 duckedu
CREATE DATABASE duckedu;

USE duckedu;

-- 멤버
CREATE TABLE MEMBER(
	id VARCHAR(16) NOT NULL,
	pw VARCHAR(330) NOT NULL,
	NAME VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL,
	tel VARCHAR(13),
	regdate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	POINT INT DEFAULT 0,
	PRIMARY KEY (id)
);
-- 멤버 더미
INSERT INTO MEMBER(id, pw, NAME, email, tel) VALUES('admin', '1234', '관리자', 'admin@edu.com', '010-1004-1004');
INSERT INTO MEMBER(id, pw, NAME, email, tel) VALUES('lee', '1111', '이슬비', 'lee@edu.com', '010-1234-5678');


-- 비밀번호...ㅠㅠ
UPDATE MEMBER SET pw='03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4';

-- 공지사항(board)
CREATE TABLE board(
	bno INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(200) NOT NULL,
	content VARCHAR(1000),
	author VARCHAR(16),
	resdate TIMESTAMP NOT NULL default CURRENT_TIMESTAMP,
	cnt INT DEFAULT 0);
	
	
-- 공지 더미
INSERT INTO board(title, content, author) VALUES('안녕하세요 duck edu 입니다.','공지사항 내용이 들어가는 곳 입니다','admin');

-- 공지 뷰
CREATE VIEW boardList AS (SELECT b.bno AS bno, b.boardType AS boardType, b.title AS title, b.content AS content, b.author AS author, b.resdate AS resdate, b.cnt as cnt, m.name AS name FROM board b, member m WHERE b.author=m.id order BY b.bno ASC);

select * from board order by bno;



-- 멘토링 신청(qna)
CREATE TABLE qna(qno INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(200) NOT NULL,
content VARCHAR(1000),
author VARCHAR(16),
resdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
cnt INT DEFAULT 0,
lev INT DEFAULT 0, -- 질문(0), 답변(1)
par INT,	-- 부모 글번호 -> 질문(자신 레코드의 qno), 답변(질문의 글번호)
FOREIGN KEY(author) REFERENCES member(id) ON DELETE CASCADE
);


-- qna 더미
INSERT INTO qna(title, content, author, lev) VALUES('멘토링 신청합니다.', '멘토 신청 문의합니다.', 'lee', 0);
UPDATE qna SET par=qno WHERE lev=0;
INSERT INTO qna(title, content, author, lev, par) VALUES('접수완료 안내', '멘토 신청 접수가 완료 되었습니다.', 'admin', 1, 1);
UPDATE qna SET par=qno WHERE lev=0 AND qno=3;

CREATE VIEW qnalist AS (select a.qno as qno, a.title as title, a.content as content, a.author as author, 
a.resdate as resdate, a.cnt as cnt, a.lev as lev, a.par as par, b.name as name from qna a, 
member b where a.author = b.id order by a.par desc, a.lev asc, a.qno ASC);



-- 자주묻는질문(faq)
CREATE TABLE faq(
fno INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(200) NOT NULL,
question VARCHAR(1000),
answer VARCHAR(1000),
cnt INT DEFAULT 0
);

-- faq 더미
INSERT INTO faq(title,question,answer) VALUES ('(질문)', '덕에듀 이름은 어떤 의미인가요?', 
'덕에듀 덕에 아이들이 건강하고 잘 성장하기를 바라는 의미를 지니고 있습니다.');

INSERT INTO faq(title,question,answer) VALUES ('(질문)', '멘토링을 하고 싶어요!', 
'멘토,멘티를 수시로 모집중이며, 홈페이지 내 [멘토링신청] 게시판에 작성해주시면 됩니다. <br>
최약계층을 대상으로 학습 지원을 하고 있으니, 많은 관심 부탁드립니다.');

INSERT INTO faq(title,question,answer) VALUES ('(질문)', '후원은 어떻게 하나요?', 
'후원에 대한 관심 감사드립니다.  <br>
후원은 홈페이지 내 [후원] 메뉴로 들어가 폼을 작성해주시면, 담당자가 연락을 드립니다. <br>
덕에듀는 취약계층 아동을 대상으로 지원 및 후원을 하고 있으니 많은 사랑과 관심 부탁드립니다.');

-- faq 뷰CREATE VIEW faqlist AS (
SELECT a.fno AS fno, a.title AS title, a.question AS question, a.answer AS answer, 
a.author AS author, a.cnt AS cnt, b.name AS name
FROM fno a, 
member b
WHERE a.author = b.id
ORDER BY a.fno ASC);


DESC faq;
SELECT * FROM faq;
COMMIT;
COMMIT;
COMMIT;
COMMIT;
COMMIT;
COMMIT;

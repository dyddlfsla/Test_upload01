
SELECT * FROM WORK;
SELECT * FROM emp1;
SELECT a.* , b.ename
FROM PROJECT a, emp1 b
WHERE a.pm = b.empno;

SELECT * FROM RANK;

SELECT * FROM PROJECT;
SELECT * FROM PROMEMBER;
SELECT * FROM PROGRESS;
SELECT * FROM emp1;
SELECT b.pm, e.ename dname, a.WORKNO id, a.WORKTITLE text, 
TO_CHAR(a.STARTDATE, 'DD-MM-YYYY') start_date ,
(a.ENDDATE - a.STARTDATE ) duration,
a.PROGPER progress
FROM WORK a, PROJECT b, emp1 c, PROGRESS d, emp1 e
WHERE 1=1
and a.prono = b.prono
AND b.pm = e.EMPNO 
AND a.empno = c.empno
AND a.PROGRESS = d.PROGRESS;


SELECT * FROM PROJECT;

SELECT * FROM WORK ;

SELECT * FROM emp1;

SELECT * FROM PROMEMBER;
SELECT empno,pass FROM emp1
WHERE ENAME = '안현주';

SELECT * FROM emp1;

SELECT a.prono , a.PROTITLE , b.empno , c.ename , d.rankname
FROM PROJECT a , PROMEMBER b , emp1 c , RANK d
WHERE 1=1
AND a.PRONO = b.PRONO 
AND b.EMPNO = c.EMPNO 
AND c.RANKNO = d.RANKNO 
AND a.prono = 53;

INSERT INTO PROMEMBER values(53,1024);

DROP TABLE PROMEMBER;

SELECT * FROM emp1;

CREATE TABLE PROMEMBER(
prono NUMBER,
empno number
);

		 SELECT * 
		FROM PROJECT
		WHERE prono=53;

	
	
		UPDATE PROJECT 
		set	pm=1020,
			startdate=to_date(20201111,'YYYY-MM-DD'),
			enddate=to_date(20201212,'YYYY-MM-DD'),
			comment1='코멘트2',
			progress=2
		WHERE prono=53;	


INSERT INTO PROJECT values(project_seq.nextval,'프로젝트4',
1020,to_date(20201111,'YYYY-MM-DD'),to_date(20201212,'YYYY-MM-DD'),'내용',1,'서울');

SELECT a.empno, a.mgr, b.ENAME, c.ename 
from WORK a, emp1 b, emp1 c
WHERE a.empno=b.empno
AND a.mgr=c.empno;

ALTER TABLE WORK ADD mgr NUMBER;

SELECT a.*, b.deptname , c.rankname , d.POWERNAME 
FROM emp1 a, dept1 b, RANK c , power d  
WHERE a.DEPTNO = b.deptno 
AND a.RANKNO = c.RANKNO 
AND a.POWERNO =d.POWERNO
and empno=1017
AND pass=3618;

SELECT a.* b.deptname

SELECT * FROM "RANK";
SELECT * FROM power;
SELECT * FROM dept1;

SELECT * FROM PROJECT;
SELECT * FROM PROGRESS;


INSERT INTO PROGRESS VALUES(1,'진행예정');
INSERT INTO PROGRESS VALUES(2,'진행중');
INSERT INTO PROGRESS VALUES(3,'완료대기');

INSERT INTO PROGRESS VALUES(4,'완료');
INSERT INTO PROGRESS VALUES(5,'문제발생');
INSERT INTO PROGRESS VALUES(6,'재검토');

CREATE TABLE project(
prono NUMBER PRIMARY KEY,
protitle varchar2(150),
pm number,
startdate DATE,
enddate DATE,
comment1 varchar2(300),
progress NUMBER,
field varchar2(100)
);

DROP TABLE project;



SELECT b.prono, protitle, b.pm, workno,  WORKTITLE , e.ename , a.STARTDATE, a.ENDDATE , d.PROGCONTENT , a.PROGPER 
FROM WORK a, PROJECT b, emp1 c, PROGRESS d, emp1 e
WHERE 1=1
and a.prono = b.prono
AND b.pm = e.empno
AND a.empno = c.empno
AND a.PROGRESS = d.PROGRESS;

SELECT * 
FROM PROJECT a, emp1 b
WHERE 1=1
AND a.pm = b.empno;

SELECT a.*, b.ename
FROM PROJECT a, emp1 b
WHERE 1=1
AND a.pm = b.empno;


SELECT a.prono, b.PROTITLE, b.pm, e.ename, a.WORKNO, a.WORKTITLE, a.empno, c.ename, a.STARTDATE, a.ENDDATE , d.PROGCONTENT , a.PROGPER 
FROM WORK a, PROJECT b, emp1 c, PROGRESS d, emp1 e
WHERE 1=1
and a.prono = b.prono
AND b.pm = e.EMPNO 
AND a.empno = c.empno
AND a.PROGRESS = d.PROGRESS;


SELECT a.prono, b.PROTITLE, b.pm, a.WORKNO, a.WORKTITLE, a.empno, c.ename, a.STARTDATE, a.ENDDATE , d.PROGCONTENT , a.PROGPER 
FROM WORK a, PROJECT b, emp1 c, PROGRESS d, emp1 e
WHERE 1=1
and a.prono = b.prono
AND b.pm = e.EMPNO 
AND a.empno = c.empno
AND a.PROGRESS = d.PROGRESS
AND (a.empno = 1020 OR b.pm = 1020);

SELECT a.prono, b.PROTITLE, b.pm, e.ename dname, a.WORKNO, a.WORKTITLE, a.empno, c.ename, a.STARTDATE, a.ENDDATE , d.PROGCONTENT , a.PROGPER 
FROM WORK a, PROJECT b, emp1 c, PROGRESS d, emp1 e
WHERE 1=1
and a.prono = b.prono
AND b.pm = e.EMPNO 
AND a.empno = c.empno
AND a.PROGRESS = d.PROGRESS;


CREATE TABLE work(
workno NUMBER,
prono NUMBER,
empno NUMBER,
mgr NUMBER,
worktitle varchar2(100),
workcontent varchar2(300),
startdate DATE,
enddate DATE,
progress NUMBER,
progper number
);

DROP TABLE WORK;

INSERT INTO project VALUES(project_seq.nextval,'프로젝트2',1024,'20201103','20201208','코멘트1',1);
INSERT INTO project VALUES(project_seq.nextval,'프로젝트3',1023,'20201103','20201208','코멘트1',1);

INSERT INTO WORK values(work_seq.nextval,44,2344,'로그인','로그인 만들어 주세요','20201109','20201211',1,0);
INSERT INTO WORK values(work_seq.nextval,53,1017,1020,'로그아웃','로그인 만들어 주세요','20201109','20201211',1,0);

	 	INSERT INTO work values( work_seq.nextval,
		#{prono},#{empno},#{worktitle},to_date(#{sd},'YYYY-MM-DD'),to_date(#{ed},'YYYY-MM-DD'),#{enddate},1,0)

			UPDATE work 
		set	empno =1009,
			workcontent='수정1',
			startdate=to_date('20201111','YYYY-MM-DD'),
			enddate=to_date('20201212','YYYY-MM-DD'),
			progress=3,
			progper=50
		WHERE workno=28;
	SELECT * FROM emp1;	
	
	UPDATE Emp1 
		set	DEPTNO = 20,
			RANKNO = 2,
			POWERNO = 2,
			MAIL = 'sunkjm@naver.com',
			TEL = '01022304423'
		WHERE empno=1016; 	
		
CREATE TABLE workfile(
workno NUMBER,
filename varchar2(300),
indate DATE,
chdate date
);

SELECT * FROM workfile;


INSERT INTO workfile values(35,'일단 임시',sysdate,null);

SELECT * FROM PROGRESS
WHERE PROGRESS !=3
AND PROGRESS !=5;

SELECT * FROM PROJECT;

SELECT * FROM DEPT1;

SELECT * FROM RANK;

SELECT * FROM power;

SELECT * FROM POWER;

SELECT * FROM RANK;

SELECT * FROM dept1;

SELECT * FROM CALENDER;

SELECT * FROM WORK;

SELECT a.RISKNO, b.WORKTITLE, D.ENAME , E.ENAME dname , A.RITITLE , A.INDATE, f.PROGCONTENT ,C.* , a.*
FROM risk a, WORK b, PROJECT c, EMP1 D, EMP1 E, PROGRESS f
where a.workno=b.WORKNO 
AND B.EMPNO=D.EMPNO
AND B.MGR=E.EMPNO
AND b.PRONO=c.PRONO
AND a.YN = f.PROGRESS 
AND (D.empno = 1020 OR E.EMPNO = 1020);

SELECT * FROM emp1;
SELECT * FROM WORK
WHERE empno=1020 OR mgr=1020;

SELECT * FROM risk;

SELECT * FROM PROGRESS;

DROP TABLE RISK; 

CREATE TABLE RISK(
riskno NUMBER,
workno NUMBER,
indate DATE,
eddate DATE,
rititle varchar2(100),
rcontent varchar2(1000),
progress number,
progper NUMBER,
RISKFILE varchar2(500)
);

CREATE SEQUENCE RISK_seq --시퀀스이름 EX_SEQ
INCREMENT BY 1 --증감숫자 1
START WITH 1 --시작숫자 1
MINVALUE 1 --최소값 1
MAXVALUE 1000 --최대값 1000
NOCYCLE; --순한하지않음

INSERT INTO RISK values(RISK_seq.nextval,195,
sysdate,null,'리스크1','리스크 내용 1',1,0,null);

	UPDATE Emp1 
		set	DEPTNO = 20,
			RANKNO = 2,
			POWERNO = 2,
			MAIL = 'sunkjm@naver.com',
			TEL = '01022304423'
		WHERE empno=1016; 	
	
	SELECT * FROM WORK;
	
 	SELECT *
	FROM work
	WHERE 1=1
	AND (empno=1020 or mgr=1020);
	
SELECT * 
	FROM work
	WHERE 1=1
	and workno=196;	

SELECT * FROM risk;

		UPDATE risk 
		set	rcontent='gg',
			yn=4,
			eddate=sysdate,
			progper=0
		WHERE riskno=7 	;
		
		UPDATE risk 
		set	workcontent=#{workcontent},
			progress=#{progress},
			enddate=sysdate,
			progper=#{progper}
		WHERE riskno=
		
		UPDATE risk 
		set	rcontent='ㅎㅎ',
			progress=3,
			eddate=sysdate,
			progper=0
		WHERE riskno=12; 	
		
		UPDATE WORK
		set	progress=6,
			progper=0
		WHERE workno=195;
	
		SELECT * FROM WORK;
	
		UPDATE WORK
		set	progress=4,
			progper=100
		WHERE workno=195;
		
	SELECT * FROM EMP1;
	SELECT * FROM PROGRESS;
INSERT INTO workfile values(35,'일단 임시',sysdate,null);
SELECT * FROM PROJECT ;

INSERT INTO workfile values(35,'일단 임시',sysdate,null);

SELECT e.ename , b.PROTITLE, b.FIELD,
TO_CHAR(a.STARTDATE, 'DD-MM-YYYY') startdate ,TO_CHAR(a.ENDDATE,'DD-MM-YYYY' ) enddate
FROM WORK a, PROJECT b, emp1 c, PROGRESS d, emp1 e
WHERE a.prono = b.prono AND b.pm = e.EMPNO AND a.empno = c.empno AND a.PROGRESS = d.PROGRESS;

SELECT * FROM PROMEMBER
WHERE prono=54
AND empno=1018;


SELECT * FROM WORK;

 PROMEMBER
		WHERE prono=#{prono}
		AND empno=#{empno}
		
		delete FROM PROMEMBER
		WHERE prono=54
		AND empno=1018;
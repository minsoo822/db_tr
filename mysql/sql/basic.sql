-- baebae database를 사용하겠다
USE baebae;

-- 전체 컬럼 조회
SELECT * FROM member2;

-- 컬럼추가
ALTER TABLE member2 ADD COLUMN age varchar(45);

-- AFTER () 는 그 다음에 테이블을 만들어준다.

ALTER TABLE member2 ADD COLUMN dob varchar(45) AFTER name;


-- 컬럼 변경 
ALTER TABLE member2 MODIFY COLUMN nickname varchar(100);

-- 컬럼 이름변경
ALTER



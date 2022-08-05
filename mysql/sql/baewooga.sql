USE baebae;

SELECT 
	a.seq
    ,a.group_name
    ,b.group_code_seq
	,b.code_name
FROM ccg a
JOIN cc b on a.seq = b.group_code_seq
;


-- 로그인
SELECT * FROM member WHERE id = "" AND password = ""
;

-- 학교 목록
SELECT 
	a.seq
    ,a.id
    ,a.password
    ,a.name
    ,b.period
    ,b.school_name
    ,b.type
FROM member a
left join actor_education b on a.seq = b.member_seq
-- inner join actor_education b on b.member_seq = a.seq
;

-- 상 목록
SELECT 
	a.seq
    ,a.dob
    ,a.name
    ,b.name
    ,b.issuer
FROM member a
left join actor_award b on a.seq = b.member_seq
-- inner join actor_award b on b.member_seq = a.seq
;

-- sns 목록
SELECT
	a.id
    ,a.name
    ,b.type
    ,b.url
FROM member a
left join actor_sns b on a.seq = b.member_seq
;

-- 특기 목록
SELECT
	a.seq
    ,a.name
    ,b.name
FROM member a
-- left join actor_specialty b on a.seq = b.member_seq
inner join actor_specialty b on a.seq = b.member_seq
;

-- 경력사항 목록
SELECT 
	a.name
    ,a.id
    ,a.dob
	,b.company_name
FROM member a 
-- left join actor_career b on a.seq = b.member_seq
inner join actor_career b on a.seq = b.member_seq
;


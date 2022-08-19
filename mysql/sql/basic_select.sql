USE baebae;

-- 공통코드
SELECT 
	a.seq
    ,a.group_name
    ,b.group_code_seq
	,b.code_name
FROM ccg a
JOIN cc b on a.seq = b.group_code_seq
;


select
	a.user_type
    ,a.name
    ,a.id
	,b.name
    ,b.issuer
from member a
-- left join actor_award b on b.member_seq = a.seq
inner join actor_award b on b.member_seq = a.seq
-- join actor_award b on b.member_seq = a.seq
;

-- 로그인
SELECT
	a.id
    ,a.password
FROM member a
;

-- 메인.오디션정보
SELECT 
	a.name
    ,a.producer
    ,a.casting
    ,a.age
    ,a.gender
    
FROM post_odition a
order by
	a.seq desc
limit 0,6
;

-- 메인.배우프로필
SELECT 	
	a.name
    ,a.age
FROM member a
WHERE 1=1
	and a.user_type = 26
order by
-- a.seq asc
	a.seq desc
	limit 0,10
;	

-- 메인.투어정보
SELECT
	a.seq
    ,a.type
    ,a.name
    ,a.address
    ,a.date
    ,a.note
FROM post_tour a    
limit 0,9
;

-- 오디션정보목록
SELECT 
	a.name
    ,a.producer
    ,a.casting
    ,a.age
    ,a.gender
FROM post_odition a
	limit 0,6
;

-- 투어정보목록
SELECT
	a.seq
    ,a.type
    ,a.name
    ,a.address
    ,a.date
    ,a.note
FROM post_tour a    
limit 0,9
;

-- 프로필 보기 남자
SELECT
a.user_type
	,a.name
    ,a.age
-- (select  FROM )
FROM member a
	WHERE 1=1
		and user_type = 26
		and gender = 28
;

-- 배우 프로필 보기 여자
SELECT 
	a.name
    ,a.age
	
FROM member a
	WHERE 1=1
		and user_type = 26
        and gender = 29
;

-- 디렉터 보기
SELECT 
	a.name
    ,a.director_type

FROM member a    
WHERE 1=1
	and user_type = 27
;
    

SELECT
	a.seq
    ,a.name
    ,a.gender
	,b.name_type
FROM member a
left join company b on b.member_seq = a.seq
WHERE 1=1
	and a.user_type = 26
union ALL
SELECT
	a.seq
    ,a.name
    ,a.gender
	,b.name_type
FROM member a
left join company b on b.member_seq = a.seq
WHERE 1=1
	and a.user_type = 27
;

SELECT 
	a.name
    ,b.period
	,b.school_name
    ,b.major
    ,b.type
from member a 
left join actor_education b on b.member_seq = a.seq 
WHERE 1=1
and a.seq = 14
;    


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

-- 메인.오디션정보



-- 메인.배우프로필

-- 메인.투어정보

-- 투어정보목록

-- 오디션정보목록


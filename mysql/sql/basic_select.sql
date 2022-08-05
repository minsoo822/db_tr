USE baebae;

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
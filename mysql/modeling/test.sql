use baebae;


SELECT DISTINCT
	a.seq
    ,a.name
    ,(select 
		COUNT(ccg_seq) 
	from cc 
    WHERE ccg_seq = a.seq 
    ) AS codeCount
FROM ccg a
join cc b on a.seq = b.ccg_seq
;
SELECT 
			a.*
			 ,(select COUNT(ccg_seq) from cc WHERE ccg_seq = a.seq ) AS codeCount
            ,b.name AS codename
		FROM ccg a
        JOIN cc b on a.seq = b.ccg_seq
		
	
		; 


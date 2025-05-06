INSERT INTO "SELECT 
    p.player_id, 
    p.name, 
    CAST((JULIANDAY(''now'') - JULIANDAY(p.date_of_birth)) / 365.25 AS INTEGER) AS age,
    COUNT(*) AS total_appr, 
    SUM(a.goals) AS total_goals, 
    SUM(a.assists) AS total_assists, 
    SUM(a.goals) + SUM(a.assists) AS goal_contribution,
    ROUND((SUM(CAST(a.goals AS FLOAT)) + SUM(CAST(a.assists AS FLOAT))) / COUNT(*), 2) AS gc_per_match, 
    p.market_value_in_eur,
    p.highest_market_value_in_eur AS highest_value
FROM appearances a
JOIN players p ON a.player_id = p.player_id
--WHERE p.country_of_citizenship = ''Brazil''
GROUP BY p.player_id
--HAVING age < 25
ORDER BY p.market_value_in_eur DESC
limit 20" (player_id,name,age,total_appr,total_goals,total_assists,goal_contribution,gc_per_match,market_value_in_eur,highest_value) VALUES
	 (418560,'Erling Haaland',24,231,213,42,255,1.1,200000000,200000000),
	 (371998,'Vinicius Junior',24,258,96,80,176,0.68,200000000,200000000),
	 (937958,'Lamine Yamal',17,94,21,30,51,0.54,180000000,180000000),
	 (581678,'Jude Bellingham',21,216,60,51,111,0.51,180000000,180000000),
	 (342229,'Kylian Mbappé',26,371,273,105,378,1.02,170000000,200000000),
	 (433177,'Bukayo Saka',23,245,67,66,133,0.54,150000000,150000000),
	 (598577,'Florian Wirtz',22,189,55,62,117,0.62,140000000,140000000),
	 (580195,'Jamal Musiala',22,203,61,39,100,0.49,140000000,140000000),
	 (568177,'Cole Palmer',23,113,44,25,69,0.61,130000000,130000000),
	 (406635,'Phil Foden',24,290,92,52,144,0.5,130000000,150000000);
INSERT INTO "SELECT 
    p.player_id, 
    p.name, 
    CAST((JULIANDAY(''now'') - JULIANDAY(p.date_of_birth)) / 365.25 AS INTEGER) AS age,
    COUNT(*) AS total_appr, 
    SUM(a.goals) AS total_goals, 
    SUM(a.assists) AS total_assists, 
    SUM(a.goals) + SUM(a.assists) AS goal_contribution,
    ROUND((SUM(CAST(a.goals AS FLOAT)) + SUM(CAST(a.assists AS FLOAT))) / COUNT(*), 2) AS gc_per_match, 
    p.market_value_in_eur,
    p.highest_market_value_in_eur AS highest_value
FROM appearances a
JOIN players p ON a.player_id = p.player_id
--WHERE p.country_of_citizenship = ''Brazil''
GROUP BY p.player_id
--HAVING age < 25
ORDER BY p.market_value_in_eur DESC
limit 20" (player_id,name,age,total_appr,total_goals,total_assists,goal_contribution,gc_per_match,market_value_in_eur,highest_value) VALUES
	 (369081,'Federico Valverde',26,331,29,30,59,0.18,130000000,130000000),
	 (357565,'Rodri',28,379,30,36,66,0.17,130000000,130000000),
	 (683840,'Pedri',22,190,25,20,45,0.24,120000000,120000000),
	 (357662,'Declan Rice',26,319,28,29,57,0.18,110000000,120000000),
	 (412363,'Rodrygo',24,261,67,51,118,0.45,100000000,110000000),
	 (349066,'Alexander Isak',25,263,119,25,144,0.55,100000000,100000000),
	 (316264,'Martin Ødegaard',26,309,59,57,116,0.38,100000000,110000000),
	 (406625,'Lautaro Martínez',27,323,148,48,196,0.61,95000000,110000000),
	 (576024,'Julián Alvarez',25,148,59,23,82,0.55,90000000,90000000),
	 (534033,'Alexis Mac Allister',26,197,31,18,49,0.25,90000000,90000000);

INSERT INTO "SELECT 
    p.player_id, 
    p.name, 
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
HAVING total_appr  > 200
ORDER BY gc_per_match DESC
limit 20" (player_id,name,total_appr,total_goals,total_assists,goal_contribution,gc_per_match,market_value_in_eur,highest_value) VALUES
	 (28003,'Lionel Messi',522,451,224,675,1.29,35000000,180000000),
	 (8198,'Cristiano Ronaldo',482,432,114,546,1.13,15000000,120000000),
	 (418560,'Erling Haaland',231,213,42,255,1.1,200000000,200000000),
	 (68290,'Neymar',342,212,143,355,1.04,50000000,180000000),
	 (342229,'Kylian Mbappé',371,273,105,378,1.02,170000000,200000000),
	 (38253,'Robert Lewandowski',612,507,118,625,1.02,15000000,90000000),
	 (44352,'Luis Suárez',445,289,149,438,0.98,4000000.0,90000000),
	 (3455,'Zlatan Ibrahimović',283,196,78,274,0.97,2000000.0,46000000),
	 (132098,'Harry Kane',493,346,85,431,0.87,90000000,150000000),
	 (26399,'Sergio Agüero',323,220,57,277,0.86,15000000,80000000);
INSERT INTO "SELECT 
    p.player_id, 
    p.name, 
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
HAVING total_appr  > 200
ORDER BY gc_per_match DESC
limit 20" (player_id,name,total_appr,total_goals,total_assists,goal_contribution,gc_per_match,market_value_in_eur,highest_value) VALUES
	 (148455,'Mohamed Salah',526,292,144,436,0.83,55000000,150000000),
	 (18922,'Karim Benzema',469,257,122,379,0.81,15000000,60000000),
	 (50143,'Jonas',260,156,47,203,0.78,2000000.0,12000000),
	 (58864,'Pierre-Emerick Aubameyang',503,294,80,374,0.74,5000000.0,75000000),
	 (324503,'Vangelis Pavlidis',237,122,49,171,0.72,28000000,28000000),
	 (48280,'Edinson Cavani',387,232,47,279,0.72,2500000.0,60000000),
	 (307058,'Mehdi Taremi',230,103,61,164,0.71,5000000.0,20000000),
	 (58358,'Thomas Müller',538,177,200,377,0.7,6000000.0,75000000),
	 (36139,'Dušan Tadić',562,185,210,395,0.7,2500000.0,25000000),
	 (35207,'Marco Reus',429,170,131,301,0.7,5000000.0,50000000);

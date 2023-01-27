SELECT
	(
		SELECT
			cancoes_id
		FROM  
			cancoes
		ORDER BY
			cancoes_id DESC
		LIMIT 1
	) AS 'cancoes',
    (
		SELECT
			artista_id
		FROM  
			artista
		ORDER BY
			artista_id DESC
		LIMIT 1
	) AS 'artistas',
    (
		SELECT
			albuns_id
		FROM  
			albuns
		ORDER BY
			albuns_id DESC
		LIMIT 1
	) AS 'albuns';
    
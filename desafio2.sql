SELECT
	(
		SELECT
			cancoes_id
		FROM  
			SpotifyClone.cancoes
		ORDER BY
			cancoes_id DESC
		LIMIT 1
	) AS 'cancoes',
    (
		SELECT
			artista_id
		FROM  
			SpotifyClone.artista
		ORDER BY
			artista_id DESC
		LIMIT 1
	) AS 'artistas',
    (
		SELECT
			albuns_id
		FROM  
			SpotifyClone.albuns
		ORDER BY
			albuns_id DESC
		LIMIT 1
	) AS 'albuns';
    
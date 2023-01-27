SELECT 
	*
FROM (
	SELECT 
		cancoes AS "nome_musica",
		(REPLACE(
			REPLACE(
				REPLACE(
					REPLACE(
						REPLACE(cancoes, "SUPERSTAR", "SUPERDEV"), 
						"SOUL", "CODE"),
					"Pais", "Pull Requests"), 
			"Amar", "Code Review"), 
		"Bard", "QA")
		 ) AS "novo_nome"
	FROM 
		SpotifyClone.cancoes
	) sub
WHERE
	novo_nome like "%QA%" OR
    novo_nome LIKE "%Code Review%" OR
    novo_nome LIKE "%Pull Requests%" OR
    novo_nome LIKE "%CODE%" OR
    novo_nome LIKE "%SUPERDEV%"
ORDER BY
	novo_nome DESC;

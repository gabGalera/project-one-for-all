SELECT 
	C.cancoes AS "cancao",
	COUNT(H.usuario_id) AS "reproducoes"
FROM 
	SpotifyClone.historico_de_reproducoes AS H
LEFT JOIN
	SpotifyClone.cancoes AS C
ON
	H.cancoes_id = C.cancoes_id
GROUP BY
	C.cancoes
ORDER BY
	reproducoes DESC,
    cancoes
LIMIT 2
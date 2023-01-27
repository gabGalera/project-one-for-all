SELECT 
	COUNT(H.historico_de_reproducoes) AS "quantidade_musicas_no_historico"
FROM 
	SpotifyClone.historico_de_reproducoes AS H
LEFT JOIN
	SpotifyClone.usuario AS U
ON
	H.usuario_id = U.usuario_id
WHERE
    U.usuario = "Barbara Liskov"
GROUP BY
	H.usuario_id

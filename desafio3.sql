-- WITH AUX() 

SELECT 
	U.usuario AS 'usuario',
    COUNT(H.historico_de_reproducoes) AS "qt_de_musicas_ouvidas"
FROM 
	SpotifyClone.historico_de_reproducoes AS H
LEFT JOIN
	SpotifyClone.usuario AS U
ON
	U.usuario_id = H.usuario_id
GROUP BY
	U.usuario
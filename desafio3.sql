
WITH AUX(usuario_id, historico_de_reproducoes, duracao_segundos)AS(
	SELECT
		H.usuario_id,
		H.historico_de_reproducoes,
        C.duracao_segundos
	FROM
		SpotifyClone.historico_de_reproducoes AS H
	LEFT JOIN
		SpotifyClone.cancoes AS C
	ON 
		H.cancoes_id = C.cancoes_id
)

SELECT
	MAX(U.usuario) AS 'usuario',
	COUNT(A.historico_de_reproducoes) AS "qt_de_musicas_ouvidas",
    COUNT(A.duracao_segundos) AS "total_minutos"
FROM
	AUX AS A
LEFT JOIN
	SpotifyClone.usuario AS U
ON
	U.usuario_id = A.usuario_id
GROUP BY
	U.usuario
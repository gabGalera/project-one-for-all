WITH AUX(usuario_id, plano)AS(
	SELECT
		U.usuario_id,
        P.plano
	FROM
		SpotifyClone.usuario AS U
	LEFT JOIN
		SpotifyClone.plano AS P
	ON
		U.plano_id = P.plano_id
	WHERE
		P.plano IN ("gratuito", "pessoal")
)

SELECT
    H.historico_de_reproducoes AS "nome",
	COUNT(AUX.usuario_id) AS "reproducoes"
FROM
	AUX
RIGHT JOIN
	SpotifyClone.historico_de_reproducoes AS H
ON
	AUX.usuario_id = AUX.usuario_id
GROUP BY
	nome
ORDER BY
	nome


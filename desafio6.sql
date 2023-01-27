SELECT
	CONCAT(faturamento_minimo, ".00") AS "faturamento_minimo",
    CONCAT(faturamento_maximo) AS "faturamento_maximo",
    CONCAT(faturamento_medio) AS "faturamento_medio",
    CONCAT(faturamento_total) AS "faturamento_total"
FROM (
	SELECT 
		ROUND(MIN(P.valor_plano), 2) AS "faturamento_minimo",
		ROUND(MAX(P.valor_plano), 2) AS "faturamento_maximo",
		ROUND(AVG(P.valor_plano), 2) AS "faturamento_medio",
		ROUND(SUM(P.valor_plano), 2) AS "faturamento_total",
		'-' AS AUX
	FROM 
		SpotifyClone.usuario AS U
	LEFT JOIN
		SpotifyClone.plano AS P
	ON
		U.plano_id = P.plano_id
	GROUP BY 
		AUX
) sub
    

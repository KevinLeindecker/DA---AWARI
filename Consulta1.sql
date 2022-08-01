CREATE VIEW v_martiplast as
SELECT
	--c.XML,
	p.COR,
	p.LINHA,
	c.QUANTIDADE,
	c.VL_TOTAL,
	c.CD_CENTRALIZADORA,
	c.DT_MOV,
	cl.SEGMENTO,
	cl.REGIAO
FROM Martiplast_BD1 as c
JOIN Martiplast_BD_Produto as p
	on c.XML = p.XML
LEFT JOIN Martiplast_BD_Cliente as cl
	on c.CD_CENTRALIZADORA = cl.CD_CENTRALIZADORA
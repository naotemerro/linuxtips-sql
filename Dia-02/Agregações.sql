-- Databricks notebook source
-- DBTITLE 1,COUNT
SELECT count(*) as nrLinhasNaoNulas -- linhas não nulas

FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
COUNT(*) AS nrLinhasNaoNulas,
COUNT(idCliente) AS nrIdClienteNaoNulo

FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
COUNT(*) AS nrLinhasNaoNulas,
COUNT(idCliente) AS nrIdClienteNaoNulo, --id cliente nao nulo
COUNT(distinct idCliente) AS nrIdclienteDistintos --id de clientes distinto

FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
COUNT(*) AS nrLinhasNaoNulas,
COUNT(idCliente) AS nrIdClienteNaoNulo, --id cliente nao nulo
COUNT(distinct idCliente) AS nrIdclienteDistintos, --id de clientes distinto
COUNT(DISTINCT idClienteUnico) AS nrIdClienteUnicoDistintos

FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
COUNT(*) AS nrLinhasNaoNulas,
COUNT(idCliente) AS nrIdClienteNaoNulo, --id cliente nao nulo
COUNT(distinct idCliente) AS nrIdclienteDistintos, --id de clientes distinto

COUNT(idClienteUnico) AS nrIdClienteUnico,
COUNT(DISTINCT idClienteUnico) AS nrIdClienteUnicoDistintos -- conta id de clientes unicos distintos


FROM silver_olist.cliente

-- COMMAND ----------

SELECT
COUNT(*) AS qtLinhas,
COUNT(DISTINCT idCliente) as qtClientes,
COUNT(DISTINCT idClienteUnico) as qtClientesUnicos

FROM silver_olist.cliente
WHERE descCidade IN ('presidente prudente', 'curitiba')

-- COMMAND ----------

SELECT 
   Round (AVG(vlPreco),2) AS avgPreco, -- media da coluna vlPreco (preco medio dos produtos)
    
    ROUND (PERCENTILE(vlPreco, 0.5), 2) AS medianPreco, -- preco mediano dos produtos 
    
    ROUND (MAX(vlPreco),2) AS maxPreco,  -- maximo da coluna vlPreco
    INT (AVG(vlFrete)) AS avgFrete, --media da coluna vlFrete
    INT (MAX(vlFrete)) AS maxFrete, -- maximo da coluna vlFrete
    Round (MIN(vlFrete), 2) AS minFrete
    
FROM silver_olist.item_pedido


-- COMMAND ----------

SELECT COUNT(*)
FROM silver_olist.cliente
WHERE descUf = 'MT'

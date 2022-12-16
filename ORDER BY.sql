-- Databricks notebook source
SELECT 
descUf,
COUNT(DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY descUF

-- COMMAND ----------

-- Primeira forma

SELECT 
descUf,
COUNT(DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY 2

-- COMMAND ----------

-- Segunda forma

SELECT 
descUf,
COUNT(DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY qtClienteEstado

-- COMMAND ----------

-- Terceira forma

SELECT 
descUf,
COUNT(DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY COUNT(DISTINCT idClienteUnico)

-- COMMAND ----------

-- Quarta forma

SELECT 
descUf,
COUNT(DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY qtClienteEstado DESC

-- COMMAND ----------

-- Quarta forma

SELECT 
descUf,
COUNT(DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY qtClienteEstado DESC

LIMIT 1

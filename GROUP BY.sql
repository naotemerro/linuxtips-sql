-- Databricks notebook source


-- COMMAND ----------

SELECT
descUF,
COUNT(*)

FROM silver_olist.cliente

GROUP BY descUF

-- COMMAND ----------



-- COMMAND ----------

SELECT
descUF,
COUNT(DISTINCT idClienteUnico)

FROM silver_olist.cliente

GROUP BY descUF

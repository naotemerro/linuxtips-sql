-- Databricks notebook source
-- DBTITLE 1,Exercício 01
-- 01 selecione todos os clientes palistanos

SELECT *
FROM silver_olist.cliente
WHERE descCidade = 'sao paulo'

-- COMMAND ----------

-- DBTITLE 1,Exercício 02
-- 02 selecione todos os clientes paulistas

SELECT *
FROM silver_olist.cliente
WHERE descUF = 'SP'

-- COMMAND ----------

-- DBTITLE 1,Exercício 03
-- 03 selecione todos os vendedores cariocas
SELECT *
FROM silver_olist.vendedor
WHERE descUF = 'rio de janeiro' 
OR descUF = 'SP'

-- COMMAND ----------

-- DBTITLE 1,Exercicio 04
-- 04 Selecione produtos de perfumaria e bebes com altura maior que 5cm

SELECT *

FROM silver_olist.produto

WHERE descCategoria IN ('perfumaria', 'bebes') 

AND vlAlturaCm > 5


-- COMMAND ----------

-- DBTITLE 1,Exercício Lista 01
-- lista de pedido com mais de um (01) item 
SELECT *

FROM silver_olist.item_pedido
WHERE idPedidoItem > 2

-- COMMAND ----------



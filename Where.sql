-- Databricks notebook source
SELECT * 

FROM silver_olist.pedido

WHERE descSituacao = 'canceled'

-- LIMIT 100

-- leia-se: selecione todas as colunas da tabela silver_olist.pedido onde a situação do pedido seja entregue 'delivered'



-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE descSituacao = 'shipped'
AND year(dtPedido) = '2018'

-- leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando pedidos enviados de 2018

-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND year(dtPedido) = '2018'

-- leia-se: selecione todas as colunas da tabela silve_olist.pedido filtrando pedidos (enviados OU cancelados) de 2018

-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE descSituacao IN ('shipped','canceled')
AND year(dtPedido) = '2018'

-- COMMAND ----------

SELECT * 

FROM silver_olist.pedido

WHERE descSituacao IN ('shipped','canceled')
AND year(dtPedido) = '2018'
AND DATEDIFF(dtEstimativaEntrega, dtAprovado) > 30


-- COMMAND ----------

SELECT 'Olá Mundo!'

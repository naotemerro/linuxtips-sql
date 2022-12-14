-- Databricks notebook source
select idPedido
  

FROM silver_olist.pedido

-- leia-se: seleciona a coluna idPedido da tabela silver_olist.pedido

-- COMMAND ----------

SELECT * from silver_olist.pedido

-- leia-se: selecione TUDO da tabela silve_olist.pedido

-- COMMAND ----------

select idPedido,
        descSituacao

FROM silver_olist.pedido

-- leia-se: seleciona a coluna idPedido e descSituacao da tabela silver_olist.pedido

-- COMMAND ----------

SELECT idPedido,
        descSituacao
        
FROM silver_olist.pedido

LIMIT 5

-- COMMAND ----------

SELECT *,
        DATEDIFF(dtEstimativaEntrega, dtEntregue) AS qtDiasPromessaEntrega

FROM silver_olist.pedido

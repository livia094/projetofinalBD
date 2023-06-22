use clinica_psicologia;

#Query 1 (Seleciona o paciente informando os dados do pagamento)
SELECT * FROM Pagamento
WHERE Paciente = 'Marcelo Lima Santos';

#Query 2
SELECT * FROM Pagamento
WHERE Data = '2023-02-15';


#Query 3 (valor total de todos os pagamentos)
SELECT SUM(Valor) AS Total
FROM Pagamento;


#Query 4 (Recupere o valor médio do pagamento:)
SELECT AVG(Valor) AS Average
FROM Pagamento;

#Query 5 (Recupere o maior valor de pagamento:)
SELECT MAX(Valor) AS ValorMax
FROM Pagamento;



#Query 6 (Total de cada forma de pagamento:)
SELECT FormaPagamento, COUNT(*) AS Count
FROM Pagamento
GROUP BY FormaPagamento;


#Query 7 (valor total dos pagamentos efetuados em cada mês:)
SELECT EXTRACT(MONTH FROM Data) AS Month, SUM(Valor) AS Total
FROM Pagamento
GROUP BY EXTRACT(MONTH FROM Data);


#Query 8 (Recupere os 5 valores de pagamento mais altos:)
SELECT *
FROM Pagamento
ORDER BY Valor DESC
LIMIT 5;

#Query 9 (Recupere o pagamento com o menor valor:)
SELECT *
FROM Pagamento
ORDER BY Valor
LIMIT 1;

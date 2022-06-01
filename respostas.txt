-- get employee's name by id
-- Qual o nome do funcionário?
SELECT nome FROM funcionario WHERE id = @id

-- get costumers's name and email by id
-- Qual o nome e o email do cliente?
SELECT nome,email FROM cliente WHERE id = @id

-- get all pet ids by an especified species
-- Quais são todos os ids em que eu tenho uma especie em especifico?
SELECT id FROM pet WHERE especie = @especie

-- get costumer's name and id_cliente by id
-- Qual o nome e o id do cliente pelo id?
SELECT c.nome, cp.id_cliente FROM cliente_pet as cp INNER JOIN cliente as c on cp.id_cliente = @id

-- Qual o nome do pet pelo id do prontuario?
SELECT pet.nome FROM pet as pet INNER JOIN prontuario as pron on pron.id_prontuario = @id_prontuario

-- Qual a temperatura do pet pelo id do prontuario?
SELECT pet.temperatura FROM pet as pet INNER JOIN prontuario as pron on pron.id_prontuario = @id_prontuario
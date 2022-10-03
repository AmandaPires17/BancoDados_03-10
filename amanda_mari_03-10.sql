
SELECT
	nome,
    ds_logradouro_nome,
    ds_bairro_nome,
    ds_cidade_nome,
    ds_uf_nome
    
FROM
	cad_usuario,
    logradouro,
    bairros,
    cidades,
    uf
    
WHERE
		log_cd_logradouro = cd_logradouro
        AND bairros_cd_bairro = cd_bairro
        AND cidade_cd_cidade = cd_cidade
        AND uf_cd_uf = cd_uf;

SELECT
	nome,
    ds_logradouro_nome,
    ds_bairro_nome,
    ds_cidade_nome,
    ds_uf_nome,
    descricao_tipo
    
FROM
	cad_usuario,
    logradouro,
    bairros,
    cidades,
    uf,
    tipo_usuario
    
WHERE
		log_cd_logradouro = cd_logradouro
        AND bairros_cd_bairro = cd_bairro
        AND cidade_cd_cidade = cd_cidade
        AND uf_cd_uf = cd_uf
        AND tipuser_cd = cod_tip_user;

SELECT 
	*

FROM
	pedidos;
    
SELECT 
	cod_pedido,
    dtped,
    cod_itemp,
    qtditem,
    cod_produto,
    descricao
    
FROM 
	pedidos,
    itemped,
    produto
    
WHERE 
	cod_produto = prod_cod_produto
    AND cod_pedido = ped_codpedidos;
    
    Select
    
    nome, cpf, cod_pedido, dtped, qtditem, descricao, preco_unit
    
    from cad_usuario, pedidos, itemped, produto
    
    where 
    
    cpf = 63748762435 and
    cod_pedido = ped_codpedidos and 
    cod_produto = prod_cod_produto;
    
    select * from tipo_logradouro;
    
    Select ds_logradouro_nome, ds_bairro_nome, ds_cidade_nome, ds_uf_nome, log_cd_tip_log
    from logradouro, bairros, cidades, uf, tipo_logradouro
    
    where
    logradouro.bairros_cd_bairro = bairros_cd_bairro
    and bairros_cd_bairro = cidades.cd_cidade
    and cidades.uf_cd_uf = uf.cd_uf
    and logradouro.log_cd_tip_log = tipo_logradouro.cd_tipo_logradouro
    and tipo_logradouro.desc_tip_log = 'Avenida'
    and uf.ds_uf_sigla = 'sc'
    and cidades.ds_cidade_nome = 'Araquari';
    
    
    select descricao, preco_unit, preco_emb
    from produto
    where preco_unit <> 7.00;
    
    select * from produto limit 10;
    
    select descricao, preco_unit, preco_emb, qtd_emb, (preco_unit * qtd_emb)  as resultado 
    from produto limit 10;
    
    select descricao, preco_unit, preco_emb
    from produto
    where preco_unit > 1.95 and preco_unit < 8.50;
    
    select descricao, preco_unit, preco_emb, qtd_emb
    from produto 
    where cod_produto = 22;
    
    select descricao, preco_unit, preco_emb, qtd_emb, (preco_unit * qtd_emb)
    from produto 
    where cod_produto = 22;
    
    select * from produto limit 19;
    update produto set preco_emb = (preco_unit * qtd_emb);
    
    select descricao, preco_unit, ( preco_unit + 0.75)
    from produto;
    
    select descricao, preco_unit, preco_emb, qtd_emb
    from produto
    where qtd_emb <= 12;
    
    select descricao, preco_unit
    from produto
    where preco_unit + (0.5 * preco_unit / 100);
    
    
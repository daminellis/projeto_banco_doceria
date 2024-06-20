insert into un_medida (
    un_medida_id,
    nm_medida,
    sigla 
)
values(
    nextval('un_medida_un_medida_id_seq'),
    'Unidade',
    'UN'
)

insert into un_medida (
    un_medida_id,
    nm_medida,
    sigla 
)
values(
    nextval('un_medida_un_medida_id_seq'),
    'Quilograma',
    'KG'
)

insert into produto(
    produto_id,
    nome,
    descricao,
    preco,
    perc_deconto,
    disp 
)
values(
    nextval('produto_produto_id_seq'),
    'Pão de queijo',
    'Mini pãezinhos de quiejo',
    3.5,
    0,
    true
)


insert into cardapio(
    card_id,
    produto_id 
)
values(
    nextval('cardapio_card_id_seq'),
    1    
)

insert into categoria_cardapio(
    cat_id,
    card_id,
    descricao
)
values(
    nextval('categoria_cardapio_cat_id_seq'),
    1,
    'Salgados'
)

insert into cliente(
    cliente_id,
    nome,
    email,
    telefone,
    endereco 
)
values(
    nextval('cliente_cliente_id_seq'),
    'João Carlos',
    'jc@gmail.com',
    '99999999',
    'Rua João Liriano Machado'
)

insert into pagamento(
    pag_id,
    dt_pag 
)
values(
    nextval('pagamento_pag_id_seq'),
    current_timestamp
)

insert into tipo_pagamento(
    tipo_pag_id,
    pag_id,
    nome
)
values(
    nextval('tipo_pagamento_tipo_pag_id_seq'),
    1,
    'Avista'
)

insert into pedido(
    pedido_id,
    cliente_id,
    produto_id,
    pag_id,
    data_pedido,
    status,
    valortotal,
    quantidade
)
values(
    nextval('pedido_pedido_id_seq'),
    1,
    1,
    1,
    current_timestamp,
    'Processamento',
    7.0,
    2
)

insert into ingrediente(
    ingrediente_id,
    un_medida_id,
    nome,
    descricao,
    qtd_estoque 
)
values(
    nextval('ingrediente_ingrediente_id_seq'),
    2,
    'Farinha de trigo',
    'Marca dona benta ',
    3
)

insert into produto_ingrediente(
    produto_id,
    ingrediente_id,
    quantidade,
    un_medida_id   
)
values(
    1,
    1,
    2,
    1
)

select * from cardapio

select * from categoria_cardapio

select * from cliente

select * from ingrediente

select * from pagamento

select * from pedido

select * from produto

select * from produto_ingrediente

select * from tipo_pagamento

select * from un_medida
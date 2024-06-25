-- UN_MEDIDA
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
insert into un_medida (
    un_medida_id,
    nm_medida,
    sigla 
)
values(
    nextval('un_medida_un_medida_id_seq'),
    'Mililitros',
    'ML'
),

insert into un_medida (
    un_medida_id,
    nm_medida,
    sigla 
)
values(
    nextval('un_medida_un_medida_id_seq'),
    'Gramas',
    'G'
),

insert into un_medida (
    un_medida_id,
    nm_medida,
    sigla 
)
values(
    nextval('un_medida_un_medida_id_seq'),
    'Litros',
    'L'
),

insert into un_medida (
    un_medida_id,
    nm_medida,
    sigla 
)
values(
    nextval('un_medida_un_medida_id_seq'),
    'Xícara de Chá',
    'Xc'
),

insert into un_medida (
    un_medida_id,
    nm_medida,
    sigla 
)
values(
    nextval('un_medida_un_medida_id_seq'),
    'Colher de Sopa',
    'CS'
)

insert into un_medida (
    un_medida_id,
    nm_medida,
    sigla 
)
values(
    nextval('un_medida_un_medida_id_seq'),
    'Colher de Chá',
    'CC'
)

-- PRODUTO
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
    'Mini Quiche Lorraine',
    'Tortinha individual recheada com bacon, provolone e cebola',
    7.5,
    0,
    true
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
    'Mini Quiche alho-poró e queijo',
    'Tortinha individual recheada com alho-poró e queijo Brie',
    8.0,
    0,
    true
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
    'Mini Quiche de rúcula com tomate seco',
    'Tortinha individual recheada rúcula fresca e tomate seco ao molho pesto',
    8.0,
    0,
    true
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
    'Esfiha',
    'Mini massa em forma de pizza recehada com carne moída temperada e tempero verde',
    4.5,
    0,
    false
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
    'Vol-au-Vent de funghi',
    'Cestinha de massa folhada crocante recehada com creme de funghi com ervas finas',
    9.0,
    0,
    true
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
    'Vol-au-Vent de carne seca',
    'Cestinha de massa folhada crocante recehada com creme de carne seca',
    6.0,
    0,
    true
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
    'Vol-au-Vent Champignon',
    'Cestinha de massa folhada crocante recheada com champignon e molho bechamel',
    7.0,
    0,
    true
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
    'Wrap Gourmet de salmão',
    'Tortilha recheada com salmão defumado, cream cheese e rúcula',
    14.0,
    0,
    true
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
    'Wrap Gourmet de peito de peru',
    'Tortilha recheada com peito de peru, com queijo brie e damasco com mel',
    12.0,
    0,
    true
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
    'Bolinho de camarão com limão',
    'Bolinho cremoso assado com risoto de camarão cremoso e um toque cítrico de limão siciliano',
    9.0,
    0,
    true
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
    'Canolli Siciliano',
    'Tubo de massa crocante recheado com um cremoso creme de ricotta, pistache picado e gotas de chocolate ',
    8.0,
    0,
    true
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
    'Éclair',
    'Docinho alongado com massa choux recheado com creme de confeiteiro de baunilha e coberto com ganahche de chocolate',
    6.5,
    0,
    true
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
    'Macaron de Blueberry',
    'Biscoito delicado feito com farinha de amêndoas recheado com creme de blueberry',
    5.9,
    0,
    true
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
    'Macaron de Banoffee',
    'Biscoito delicado feito com farinha de amêndoas recheado banana, doce de leite e coberto com chantilly ',
    5.9,
    0,
    true
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
    'Macaron de Cheesecake',
    'Biscoito delicado feito com farinha de amêndoas e geleia de frutas vermelhas',
    5.0,
    0,
    true
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
    'Macaron com creme Brûlée',
    'Biscoito delicado feito com farinha de amêndoas recheado ocm chocolate branco e pasta de baunilha',
    6.0,
    0,
    true
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
    'Macaron de Nutella',
    'Biscoito delicado feito com farinha de amêndoas e recheado com creme de avelã e chocolate meio amargo',
    6.0,
    0,
    true
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
    'Macaron de Maracujá',
    'Biscoito delicado feito com farinha de amêndoas e recheado com creme maracujá',
    6.0,
    0,
    true
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
    'Macaron Red Velvet',
    'Biscoito delicado feito com farinha de amêndoas recehado com chocolate branco e doce colonial de morango',
    6.0,
    0,
    true
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
    'Macaron Pistache',
    'Biscoito delicado feito com farinha de amêndoas recehado com chocolate branco e pasta de pistache coberto com castanha de caju em pedaços',
    7.0,
    0,
    true
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
    'Torta de Damasco inteira',
    'Uma torta macia e fresca feita com queijo mascarpone, ganache de chocolate, damasco fresco e mirtilos',
    120.0,
    0,
    true
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
    'Torta de Damasco fatia',
    'Uma torta macia recheada com chantilly, damasco, nozes, ameixa seca e coberta com fios de ovos',
    14.0,
    0,
    true
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
    'Torta Macrom inteira',
    'Uma torta macia recheada com chantilly, damasco, nozes, ameixa seca e coberta com fios de ovos',
    120.0,
    0,
    true
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
    'Torta Macrom fatia',
    'Uma torta macia recheada com chantilly, damasco, nozes, ameixa seca e coberta com fios de ovos',
    12.0,
    0,
    true
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
    'Torta Red Velvet inteira',
    'Massa macia e avermelhada recheada com cream cheese e coberta com calda de framboesa',
    100.0,
    0,
    true
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
    'Torta Red Velvet fatia',
    'Massa macia e avermelhada recheada com cream cheese e coberta com calda de framboesa',
    10.9,
    0,
    true
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
    'Cheesecake de Frutas Vermemlhas inteira',
    'Uma base crocante de biscoito recheada com um cremoso cheesecake e coberta por calda e frutas vermelhas frescas',
    120.0,
    0,
    true
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
    'Cheesecake de Frutas Vermemlhas fatia',
    'Uma base crocante de biscoito recheada com um cremoso cheesecake e coberta por calda e frutas vermelhas frescas',
    12.0,
    0,
    true
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
    'Cheesecake de Blueberry inteira',
    'Uma base crocante de biscoito recheada com um cremoso cheesecake e coberta por calda de blueberry e blackberry',
    120.0,
    0,
    true
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
    'Cheesecake de Blueberry fatia',
    'Uma base crocante de biscoito recheada com um cremoso cheesecake e coberta por calda de blueberry e blackberry',
    14.0,
    0,
    true
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
    'Mousse de maracujá com manga',
    'Uma sobremesa leve e refrescante, com mousse cremoso de maracujá e calda tropical de manga',
    9.5,
    0,
    true
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
    'Verrines',
    'Copinhos com camadas de mousse de maracujá, creme de avelã, laranja, limão e biscoitos',
    11.0,
    0,
    false
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
    'Donut de Pistache',
    'Massa fofa e macia arredondada com um recheio marcante de creme de pistache com um toque de limão siciliano, envolto em uma nuvem de chantilly leve e aerada',
    11.0,
    0,
    true
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
    'Donut de Manga',
    'Massa fofa e leve, com um toque de coco ralado para realçar o sabor da fruta. Seu recheio é feito com creme de maracujá e pedacinhos de fruta fresca com calda de manga',
    11.0,
    0,
    false
)

-- CARDÁPIO
insert into cardapio(
    card_id,
    produto_id 
)
values(
    nextval('cardapio_card_id_seq'),
    1    
)

insert into cardapio(
    card_id,
    produto_id 
)
values(
    nextval('cardapio_card_id_seq'),
    13    
)

-- CATEGORIA CARDAPIO
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
insert into categoria_cardapio(
    cat_id,
    card_id,
    descricao
)
values(
    nextval('categoria_cardapio_cat_id_seq'),
    2,
    'Doces'
)

-- CLIENTE
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
-- PAGAMENTO
insert into pagamento(
    pag_id,
    dt_pag 
)
values(
    nextval('pagamento_pag_id_seq'),
    current_timestamp
)
-- TIPO PAGAMENTO
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

-- PEDIDO
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

-- INGREDIENTE
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
    'Marca dona benta',
    18
)

insert into ingrediente(
    ingrediente_id,
    un_medida_id,
    nome,
    descricao,
    qtd_estoque 
)
values(nextval('ingrediente_ingrediente_id_seq'), 2 ,'Manteiga', 'Marca Kerrygold', 9 ),
(nextval('ingrediente_ingrediente_id_seq'), 2, 'Açúcar refinado', 'Marca Imperial Sugar', 6.5),
(nextval('ingrediente_ingrediente_id_seq'), 2, 'Açúcar de Confeiteiro', 'Marca Domino', 2),
(nextval('ingrediente_ingrediente_id_seq'), 2,'Açúcar Mascavo','Marca Mãe Terra',1),
(nextval('ingrediente_ingrediente_id_seq'), 1,'Ovos', 'Granja Bela Vista', 105),
(nextval('ingrediente_ingrediente_id_seq'), 5, 'Leite', 'Marca Nestlé', 10),
(nextval('ingrediente_ingrediente_id_seq'), 5, 'Óleo', 'Marca Bertolli', 4),
(nextval('ingrediente_ingrediente_id_seq'), 4, 'Fermento em Pó','Marca Fleischmann',300),
(nextval('ingrediente_ingrediente_id_seq'), 2,'Sal','Marca Fleischmann',4),
(nextval('ingrediente_ingrediente_id_seq'),1,'Limão','Marca Real', 7),
(nextval('ingrediente_ingrediente_id_seq'),1,'Limão Siciliano', 'Marca Real', 6),
(nextval('ingrediente_ingrediente_id_seq'), 2, 'Creme de Avelã', 'Marca Nutella', 3),
(nextval('ingrediente_ingrediente_id_seq'), 1, 'Laranja', 'Marca Valencia', 3),
(nextval('ingrediente_ingrediente_id_seq'), 2, 'Morango', 'Marca Monterey', 5),
(nextval('ingrediente_ingrediente_id_seq'), 2,'Ameixa', 'Marca DAgen',3),
(nextval('ingrediente_ingrediente_id_seq'),2,'Framboesa', 'Marca San Andreas', 3),
(nextval('ingrediente_ingrediente_id_seq'), 4,'Pistache','Marca American Pistachios', 800),
(nextval('ingrediente_ingrediente_id_seq'),4,'Fios de ovos','Marca Doce Vida', 200),
(nextval('ingrediente_ingrediente_id_seq'), 4, 'Blueberry', 'Marca Blue Hill', 800),
(nextval('ingrediente_ingrediente_id_seq'), 4, 'Damasco', 'Marca Royal', 800),
(nextval('ingrediente_ingrediente_id_seq'), 1, 'Maracujá','Marca Doce Vida', 30),
(nextval('ingrediente_ingrediente_id_seq'), 1, 'Manga', 'Marca Palmer', 5),
(nextval('ingrediente_ingrediente_id_seq'), 4, 'Bacon','Marca Nobre', 500),
(nextval('ingrediente_ingrediente_id_seq'), 4,'Rúcula', 'Marca La Vita', 600),
(nextval('ingrediente_ingrediente_id_seq'), 2, 'Tomate Seco', 'Marca La Pastina',1),
(nextval('ingrediente_ingrediente_id_seq'),4,'Nozes','Marca Terra Vitta',400),
(nextval('ingrediente_ingrediente_id_seq'), 2,'Chocolate em Barra', 'Marca Harald',3),
(nextval('ingrediente_ingrediente_id_seq'),2,'Chocolate em pó','Marca Harald',1),
(nextval('ingrediente_ingrediente_id_seq'),4, 'Queijo Brie', 'Marca Brie de Meaux',400),
(nextval('ingrediente_ingrediente_id_seq'),4, 'Queijo Provolone', 'Marca Gran Formaggio', 200),
(nextval('ingrediente_ingrediente_id_seq'), 2,'Banana','Marca Cavendish',1.5),
(nextval('ingrediente_ingrediente_id_seq'), 4,'Doce de Leite', 'Marca Dulce de Leche Cachamai',500),
(nextval('ingrediente_ingrediente_id_seq'),2,'Chantilly','Marca Cavendish',1),
(nextval('ingrediente_ingrediente_id_seq'),2,'Salmão Defumado','Marca Mowi',2),
(nextval('ingrediente_ingrediente_id_seq'),2,'Cream Cheese','Marca Kiri',1),
(nextval('ingrediente_ingrediente_id_seq'), 2 ,'Farinha de Amêndoa', 'Marca Velez', 2),
(nextval('ingrediente_ingrediente_id_seq'), 4, 'Alho-Poró', 'Marca Top Seed', 600);


-- PRODUTO_INGREDIENTE
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
insert into produto_ingrediente(
    produto_id,
    ingrediente_id,
    quantidade,
    un_medida_id   
)
values(13, 20, 15, 1),
(15, 22 ,5, 1),
(27, 19, 1, 1),
(35, 20, 4, 1),
(31,22, 1, 1),
(2, 26, 5, 1),
(18, 39 ,5, 1),
(14, 30, 8, 1),
(10,37, 2, 1);

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
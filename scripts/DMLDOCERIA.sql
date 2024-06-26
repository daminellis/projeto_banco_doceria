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
INSERT INTO public.produto (nome,descricao,preco,perc_deconto,disp,cat_id) VALUES
 ('Esfiha','Mini massa em forma de pizza recheada com carne moída temperada e tempero verde',4.50,0.0,false,1),
 ('Éclair','Docinho alongado com massa choux recheado com creme de confeiteiro de baunilha e coberto com ganahche de chocolate',6.50,0.0,true,2),
 ('Macaron de Blueberry','Biscoito delicado feito com farinha de amêndoas recheado com creme de blueberry',5.90,0.0,true,2),
 ('Macaron de Banoffee','Biscoito delicado feito com farinha de amêndoas recheado banana, doce de leite e coberto com chantilly ',5.90,0.0,true,2),
 ('Macaron de Cheesecake','Biscoito delicado feito com farinha de amêndoas e geleia de frutas vermelhas',5.00,0.0,true,2),
 ('Vol-au-Vent aux Funghi','Cestinha de massa folhada crocante recheada com creme de Funghi com ervas finas',9.00,0.0,true,1),
 ('Pão de Queijo','string',3.50,0.0,true,1),
 ('Mini Quiche de Rúcula com Tomate seco','Tortinha individual recheada rúcula fresca e tomate seco ao molho pesto',8.00,0.0,true,1),
 ('Mini Quiche Alho-poró e Queijo','Tortinha individual recheada com alho-poró e queijo Brie',8.00,0.0,true,1),
 ('Vol-au-Vent de Carne seca','Cestinha de massa folhada crocante recheada com creme de carne seca',6.00,0.0,true,1);
INSERT INTO public.produto (nome,descricao,preco,perc_deconto,disp,cat_id) VALUES
 ('Vol-au-Vent aux Champignon','Cestinha de massa folhada crocante recheada com champignon e molho bechamel',7.00,0.0,true,1),
 ('Wrap Gourmet de Salmão','Tortilha recheada com salmão defumado, cream cheese e rúcula',14.00,0.0,true,1),
 ('Wrap Gourmet de Peito de Peru','Tortilha recheada com peito de peru, com queijo brie e damasco com mel',12.00,0.0,true,1),
 ('Bolinho de Camarão com Limão','Bolinho cremoso assado com risoto de camarão cremoso e um toque cítrico de limão siciliano',9.00,0.0,true,1),
 ('Canolli Siciliano','Tubo de massa crocante recheado com um cremoso creme de ricotta, pistache picado e gotas de chocolate ',6.00,0.0,true,2),
 ('Macaron com creme Brûlée','Biscoito delicado feito com farinha de amêndoas recheado ocm chocolate branco e pasta de baunilha',6.00,0.0,true,2),
 ('Macaron de Nutella','Biscoito delicado feito com farinha de amêndoas e recheado com creme de avelã e chocolate meio amargo',6.00,0.0,true,2),
 ('Macaron de Maracujá','Biscoito delicado feito com farinha de amêndoas e recheado com creme maracujá',6.00,0.0,true,2),
 ('Macaron Red Velvet','Biscoito delicado feito com farinha de amêndoas recheado com chocolate branco e doce colonial de morango',6.00,0.0,true,2),
 ('Macaron Pistache','Biscoito delicado feito com farinha de amêndoas recheado com chocolate branco e pasta de pistache coberto com castanha de caju em pedaços',7.00,0.0,true,2);
INSERT INTO public.produto (nome,descricao,preco,perc_deconto,disp,cat_id) VALUES
 ('Torta de Damasco inteira','Uma torta macia e fresca feita com queijo mascarpone, ganache de chocolate, damasco fresco e mirtilos',120.00,0.0,true,2),
 ('Torta de Damasco fatia','Uma torta macia recheada com chantilly, damasco, nozes, ameixa seca e coberta com fios de ovos',14.00,0.0,true,2),
 ('Torta Macrom inteira','Uma torta macia recheada com chantilly, damasco, nozes, ameixa seca e coberta com fios de ovos',120.00,0.0,true,2),
 ('Torta Macrom fatia','Uma torta macia recheada com chantilly, damasco, nozes, ameixa seca e coberta com fios de ovos',12.00,0.0,true,2),
 ('Torta Red Velvet inteira','Massa macia e avermelhada recheada com cream cheese e coberta com calda de framboesa',100.00,0.0,true,2),
 ('Torta Red Velvet fatia','Massa macia e avermelhada recheada com cream cheese e coberta com calda de framboesa',10.90,0.0,true,2),
 ('Cheesecake de Frutas Vermemlhas inteira','Uma base crocante de biscoito recheada com um cremoso cheesecake e coberta por calda e frutas vermelhas frescas',120.00,0.0,true,2),
 ('Cheesecake de Frutas Vermemlhas fatia','Uma base crocante de biscoito recheada com um cremoso cheesecake e coberta por calda e frutas vermelhas frescas',12.00,0.0,true,2),
 ('Cheesecake de Blueberry inteira','Uma base crocante de biscoito recheada com um cremoso cheesecake e coberta por calda de blueberry e blackberry',120.00,0.0,true,2),
 ('Cheesecake de Blueberry fatia','Uma base crocante de biscoito recheada com um cremoso cheesecake e coberta por calda de blueberry e blackberry',14.00,0.0,true,2);
INSERT INTO public.produto (nome,descricao,preco,perc_deconto,disp,cat_id) VALUES
 ('Mousse de maracujá com manga','Uma sobremesa leve e refrescante, com mousse cremoso de maracujá e calda tropical de manga',9.50,0.0,true,2),
 ('Verrines','Copinhos com camadas de mousse de maracujá, creme de avelã, laranja, limão e biscoitos',11.00,0.0,false,2),
 ('Donut de Pistache','Massa fofa e macia arredondada com um recheio marcante de creme de pistache com um toque de limão siciliano, envolto em uma nuvem de chantilly leve e aerada',11.00,0.0,true,2),
 ('Mini Quiche Lorraine','Tortinha individual',7.50,0.0,true,1);

-- CATEGORIA CARDAPIO
insert into categoria_cardapio(
    cat_id,
    descricao
)
values(
    nextval('categoria_cardapio_cat_id_seq'),
    'Salgados'
)
insert into categoria_cardapio(
    cat_id,
    descricao
)
values(
    nextval('categoria_cardapio_cat_id_seq'),
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
values( nextval('cliente_cliente_id_seq'), 'João Carlos', 'jc@gmail.com', '99999999', 'Rua João Liriano Machado'),
(nextval('cliente_cliente_id_seq'),'Ana Silva','ana.silva@example.com','11987654321','Rua das Flores, 123, São Paulo, SP'),
(nextval('cliente_cliente_id_seq'), 'Bruno Souza', 'bruno.souza@example.com', '21987654321', 'Avenida Paulista, 456, São Paulo, SP'),
(nextval('cliente_cliente_id_seq'), 'Carla Oliveira', 'carla.oliveira@example.com', '31987654321', 'Rua das Palmeiras, 789, Belo Horizonte, MG'),
(nextval('cliente_cliente_id_seq'), 'Daniel Santos', 'daniel.santos@example.com', '41987654321', 'Rua das Acácias, 101, Porto Alegre, RS'),
(nextval('cliente_cliente_id_seq'), 'Eduarda Lima', 'eduarda.lima@example.com', '51987654321', 'Avenida Brasil, 202, Rio de Janeiro, RJ'),
(nextval('cliente_cliente_id_seq'), 'Felipe Costa', 'felipe.costa@example.com', '61987654321', 'Rua das Hortênsias, 303, Curitiba, PR'),
(nextval('cliente_cliente_id_seq'), 'Gabriela Almeida', 'gabriela.almeida@example.com', '71987654321', 'Rua das Orquídeas, 404, Salvador, BA'),
(nextval('cliente_cliente_id_seq'), 'Henrique Pereira', 'henrique.pereira@example.com', '81987654321', 'Avenida das Américas, 505, Brasília, DF'),
(nextval('cliente_cliente_id_seq'), 'Isabela Fernandes', 'isabela.fernandes@example.com', '91987654321', 'Rua das Magnólias, 606, Florianópolis, SC'),
(nextval('cliente_cliente_id_seq'), 'João Ribeiro', 'joao.ribeiro@example.com', '11987654322', 'Rua das Camélias, 707, Recife, PE');



-- PAGAMENTO
insert into pagamento(
    pag_id,
    dt_pag 
)
values ( nextval('pagamento_pag_id_seq'), current_timestamp),
(nextval('pagamento_pag_id_seq'), '2024-06-25 20:55:29'),
(nextval('pagamento_pag_id_seq'), '2024-04-25 22:10:05'),
(nextval('pagamento_pag_id_seq'), '2024-03-10 07:30:15'),
(nextval('pagamento_pag_id_seq'), '2024-02-28 13:20:35'),
(nextval('pagamento_pag_id_seq'), '2024-01-20 18:45:00'),
(nextval('pagamento_pag_id_seq'), '2023-12-15 14:23:45'),
(nextval('pagamento_pag_id_seq'), '2023-11-05 09:12:30'),
(nextval('pagamento_pag_id_seq'), '2023-10-12 16:40:25'),
(nextval('pagamento_pag_id_seq'), '2023-09-18 05:05:10'),
(nextval('pagamento_pag_id_seq'), '2023-08-30 11:55:50');

-- TIPO PAGAMENTO
INSERT INTO tipo_pagamento (tipo_pag_id, pag_id, nome)
VALUES
  (nextval('tipo_pagamento_tipo_pag_id_seq'), 1, 'Cartão de débito Visa'),
  (nextval('tipo_pagamento_tipo_pag_id_seq'), 2, 'Cartão de débito Mastercard'),
  (nextval('tipo_pagamento_tipo_pag_id_seq'), 3, 'Cartão de crédito Visa'),
  (nextval('tipo_pagamento_tipo_pag_id_seq'), 4, 'Cartão de crédito Mastercard'),
  (nextval('tipo_pagamento_tipo_pag_id_seq'), 5, 'Dinheiro em espécie'),
  (nextval('tipo_pagamento_tipo_pag_id_seq'), 6, 'Pix'),
  (nextval('tipo_pagamento_tipo_pag_id_seq'), 7, 'Transferência bancária'),
  (nextval('tipo_pagamento_tipo_pag_id_seq'), 8, 'Vale-refeição'),
  (nextval('tipo_pagamento_tipo_pag_id_seq'), 9, 'Vale-alimentação'),
  (nextval('tipo_pagamento_tipo_pag_id_seq'), 10, 'Cheque'),
  (nextval('tipo_pagamento_tipo_pag_id_seq'), 11, 'Ame');

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
values ( nextval('pedido_pedido_id_seq'), 1, 1, 1, current_timestamp, 'Negado', 7.0, 2 ),
(nextval('pedido_pedido_id_seq'), 3, 10, 3, '2024-06-24 18:30:00', 'Em processamento', 30.0, 3),
(nextval('pedido_pedido_id_seq'), 4, 15, 4, '2024-06-23 17:45:00', 'Entregue', 45.0, 4),
(nextval('pedido_pedido_id_seq'), 5, 20, 5, '2024-06-22 16:15:00', 'Cancelado', 60.0, 5),
(nextval('pedido_pedido_id_seq'), 6, 25, 6, '2024-06-21 15:00:00', 'Aguardando pagamento', 75.0, 6),
(nextval('pedido_pedido_id_seq'), 7, 30, 7, '2024-06-20 14:30:00', 'Preparando para envio', 90.0, 7),
(nextval('pedido_pedido_id_seq'), 8, 29, 8, '2024-06-19 13:45:00', 'Enviado', 105.0, 8),
(nextval('pedido_pedido_id_seq'), 9, 2, 9, '2024-06-18 12:00:00', 'Devolvido', 120.0, 9),
(nextval('pedido_pedido_id_seq'), 10, 5, 10, '2024-06-17 11:30:00', 'Em análise', 135.0, 10),
(nextval('pedido_pedido_id_seq'), 1, 11, 1, '2024-06-16 10:15:00', 'Negado', 150.0, 11);

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
INSERT INTO public.un_medida
(un_medida_id, nm_medida, sigla)
VALUES(1, 'Unidade', 'UN');

INSERT INTO public.un_medida
(un_medida_id, nm_medida, sigla)
VALUES(2, 'Quilograma', 'KG');

INSERT INTO public.produto
(produto_id, nome, descricao, preco, perc_deconto, disp)
VALUES(1, 'Pão de queijo', 'Mini pãezinhos de quiejo', 3.50, 0.0, true);

INSERT INTO public.ingrediente
(ingrediente_id, un_medida_id, nome, descricao, qtd_estoque)
VALUES(1, 2, 'Farinha de trigo', 'Marca dona benta ', 3.00);

INSERT INTO public.produto_ingrediente
(produto_id, ingrediente_id, quantidade, unidade_medida, un_medida_id)
VALUES(1, 1, 2.00, 'Unidade', 1);

INSERT INTO public.cardapio
(card_id, produto_id)
VALUES(1, 1);

INSERT INTO public.categoria_cardapio
(cat_id, card_id, descricao)
VALUES(1, 1, 'Salgados');

INSERT INTO public.cliente
(cliente_id, nome, email, telefone, endereco)
VALUES(1, 'João Carlos', 'jc@gmail.com', '99999999', 'Rua João Liriano Machado');

INSERT INTO public.pagamento
(pag_id, dt_pag)
VALUES(1, '2024-06-13 13:27:26.144');

INSERT INTO public.tipo_pagamento
(tipo_pag_id, pag_id, nome)
VALUES(1, 1, 'Avista');

INSERT INTO public.pedido
(pedido_id, cliente_id, produto_id, pag_id, data_pedido, status, valortotal, quantidade)
VALUES(1, 1, 1, 1, '2024-06-13 13:30:24.092', 'Processamento', 7.00, 2.00);
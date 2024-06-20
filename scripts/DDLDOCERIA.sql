CREATE TABLE public.un_medida (
	un_medida_id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	nm_medida varchar(20) NOT NULL,
	sigla bpchar(2) NOT NULL,
	CONSTRAINT un_medida_pkey PRIMARY KEY (un_medida_id)
);

CREATE TABLE public.produto (
	produto_id int4 GENERATED BY DEFAULT AS IDENTITY( MINVALUE 0 NO MAXVALUE START 0 NO CYCLE) NOT NULL,
	nome varchar(100) NOT NULL,
	descricao text NOT NULL,
	preco numeric(10, 2) NOT NULL,
	perc_deconto float4 NULL,
	disp bool NULL,
	CONSTRAINT produto_pkey PRIMARY KEY (produto_id)
);

CREATE TABLE public.ingrediente (
	ingrediente_id int4 GENERATED BY DEFAULT AS IDENTITY( MINVALUE 0 NO MAXVALUE START 0 NO CYCLE) NOT NULL,
	un_medida_id int4 NULL,
	nome varchar(100) NOT NULL,
	descricao text NOT NULL,
	qtd_estoque numeric(10, 2) NOT NULL,
	CONSTRAINT ingrediente_pkey PRIMARY KEY (ingrediente_id)
);

-- public.ingrediente foreign keys

ALTER TABLE public.ingrediente ADD CONSTRAINT ingrediente_un_medida_id_fkey FOREIGN KEY (un_medida_id) REFERENCES public.un_medida(un_medida_id);

CREATE TABLE public.produto_ingrediente (
	produto_id int4 NULL,
	ingrediente_id int4 NULL,
	quantidade numeric(10, 2) NOT NULL,
	unidade_medida varchar(20) NULL
);

-- public.produto_ingrediente foreign keys

ALTER TABLE public.produto_ingrediente ADD CONSTRAINT produto_ingrediente_ingrediente_id_fkey FOREIGN KEY (ingrediente_id) REFERENCES public.ingrediente(ingrediente_id);
ALTER TABLE public.produto_ingrediente ADD CONSTRAINT produto_ingrediente_produto_id_fkey FOREIGN KEY (produto_id) REFERENCES public.produto(produto_id);

CREATE TABLE public.cardapio (
	card_id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	produto_id int4 NULL,
	CONSTRAINT cardapio_pkey PRIMARY KEY (card_id)
);

-- public.cardapio foreign keys

ALTER TABLE public.cardapio ADD CONSTRAINT cardapio_produto_id_fkey FOREIGN KEY (produto_id) REFERENCES public.produto(produto_id);

CREATE TABLE public.categoria_cardapio (
	cat_id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	card_id int4 NULL,
	descricao varchar(100) DEFAULT '.'::character varying NOT NULL,
	CONSTRAINT categoria_cardapio_pkey PRIMARY KEY (cat_id)
);

-- public.categoria_cardapio foreign keys

ALTER TABLE public.categoria_cardapio ADD CONSTRAINT categoria_cardapio_card_id_fkey FOREIGN KEY (card_id) REFERENCES public.cardapio(card_id);

CREATE TABLE public.cliente (
	cliente_id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	nome varchar(100) NOT NULL,
	email varchar(100) NOT NULL,
	telefone varchar(20) NOT NULL,
	endereco varchar(200) NOT NULL,
	CONSTRAINT cliente_pkey PRIMARY KEY (cliente_id)
);

CREATE TABLE public.pagamento (
	pag_id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	dt_pag timestamp NOT NULL,
	CONSTRAINT pagamento_pkey PRIMARY KEY (pag_id)
);

CREATE TABLE public.tipo_pagamento (
	tipo_pag_id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	pag_id int4 NULL,
	nome varchar(10) NOT NULL,
	CONSTRAINT tipo_pagamento_pkey PRIMARY KEY (tipo_pag_id)
);

-- public.tipo_pagamento foreign keys

ALTER TABLE public.tipo_pagamento ADD CONSTRAINT tipo_pagamento_pag_id_fkey FOREIGN KEY (pag_id) REFERENCES public.pagamento(pag_id);

CREATE TABLE public.pedido (
	pedido_id int4 GENERATED BY DEFAULT AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	cliente_id int4 NULL,
	produto_id int4 NULL,
	pag_id int4 NULL,
	data_pedido timestamp NOT NULL,
	status varchar(50) NOT NULL,
	valortotal numeric(15, 2) DEFAULT 0 NULL,
	quantidade numeric(15, 2) DEFAULT 0 NULL,
	CONSTRAINT pedido_pkey PRIMARY KEY (pedido_id)
);

-- public.pedido foreign keys

ALTER TABLE public.pedido ADD CONSTRAINT pedido_cliente_id_fkey FOREIGN KEY (cliente_id) REFERENCES public.cliente(cliente_id);
ALTER TABLE public.pedido ADD CONSTRAINT pedido_cliente_id_fkey1 FOREIGN KEY (cliente_id) REFERENCES public.cliente(cliente_id);
ALTER TABLE public.pedido ADD CONSTRAINT pedido_pag_id_fkey FOREIGN KEY (pag_id) REFERENCES public.pagamento(pag_id);
ALTER TABLE public.pedido ADD CONSTRAINT pedido_produto_id_fkey FOREIGN KEY (produto_id) REFERENCES public.produto(produto_id);
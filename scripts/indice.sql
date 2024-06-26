create index idx_cardapio_card_id on cardapio(card_id)

create index idx_cardapio_produto_id on cardapio(produto_id)

create index idx_categoria_cardapio_card_id on categoria_cardapio(card_id)

create index idx_categoria_cardapio_cat_id on categoria_cardapio(cat_id)

create index idx_cliente_cliente_id on cliente(cliente_id)

create index idx_ingrediente_ingrediente_id on ingrediente(ingrediente_id)

create index idx_ingrediente_un_medida_id on ingrediente(un_medida_id)

create index idx_pagamento_pag_id on pagamento(pag_id)

create index idx_pedido_pedido_id on pedido(pedido_id)

create index idx_pedido_cliente_id on pedido(cliente_id)

create index idx_pedido_produto_id on pedido(produto_id)

create index idx_produto_produto_id on produto(produto_id)

create index idx_produto_ingrediente_produto_id on produto_ingrediente(produto_id)

create index idx_produto_ingrediente_ingrediente_id on produto_ingrediente(ingrediente_id)

create index idx_produto_ingrediente_un_medida_id on produto_ingrediente(un_medida_id)

create index idx_tipo_pagamento_tipo_pag_id on tipo_pagamento(tipo_pag_id)

create index idx_tipo_pagamento_pag_id on tipo_pagamento(pag_id)

create index idx_un_medida_un_medida_id on un_medida(un_medida_id)
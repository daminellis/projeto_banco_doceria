CREATE OR REPLACE FUNCTION verificar_ingredientes()
RETURNS TRIGGER AS $$
DECLARE
    ing RECORD;
    quantidade_necessaria NUMERIC;
    estoque_atual NUMERIC;
BEGIN
    -- Iterar sobre cada ingrediente necessário para o produto
    FOR ing IN 
        SELECT pi.ingrediente_id, pi.quantidade
        FROM produto_ingrediente pi
        WHERE pi.produto_id = NEW.produto_id
    LOOP
        -- Obter a quantidade em estoque do ingrediente
        SELECT i.qtd_estoque INTO estoque_atual
        FROM ingrediente i
        WHERE i.ingrediente_id = ing.ingrediente_id;

        -- Calcular a quantidade necessária do ingrediente para a quantidade do pedido
        quantidade_necessaria := ing.quantidade * NEW.quantidade;
        
        -- Verificar se há quantidade suficiente do ingrediente no estoque
        IF estoque_atual < quantidade_necessaria THEN
            RAISE EXCEPTION 'Impossível realizar compra por falta de ingredientes';
        END IF;
    END LOOP;

    -- Atualizar a quantidade em estoque de cada ingrediente
    FOR ing IN 
        SELECT pi.ingrediente_id, pi.quantidade
        FROM produto_ingrediente pi
        WHERE pi.produto_id = NEW.produto_id
    LOOP
        -- Calcular a quantidade necessária do ingrediente para a quantidade do pedido
        quantidade_necessaria := ing.quantidade * NEW.quantidade;

        -- Atualizar a quantidade em estoque do ingrediente
        UPDATE ingrediente
        SET qtd_estoque = qtd_estoque - quantidade_necessaria
        WHERE ingrediente_id = ing.ingrediente_id;
    END LOOP;

    -- Se todos os ingredientes estiverem disponíveis e o estoque foi atualizado, permitir a operação
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

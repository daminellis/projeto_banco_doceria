CREATE OR REPLACE PROCEDURE atualizar_estoque_ingrediente(
    p_ingrediente_id INTEGER,
    p_nova_quantidade NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE ingrediente
    SET qtd_estoque = p_nova_quantidade
    WHERE ingrediente_id = p_ingrediente_id;
END;
$$;

CALL atualizar_estoque_ingrediente(1, 100);
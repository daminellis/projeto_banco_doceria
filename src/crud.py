from typing import List
import schemas
from database import get_connection, get_cursor

def get_produto(produto_id: int):
    conn = get_connection()
    cursor = get_cursor(conn)
    query = "SELECT * FROM produto WHERE produto_id = %s"
    cursor.execute(query, (produto_id,))
    result = cursor.fetchone()
    cursor.close()
    conn.close()
    return result

def update_produto(produto_id: int, produto: schemas.ProdutoUpdate):
    conn = get_connection()
    cursor = get_cursor(conn)

    current_produto = get_produto(produto_id)
    if not current_produto:
        return None

    fields_to_update = []
    values = []

    if produto.nome is not None:
        fields_to_update.append("nome = %s")
        values.append(produto.nome)
    if produto.descricao is not None:
        fields_to_update.append("descricao = %s")
        values.append(produto.descricao)
    if produto.preco is not None:
        fields_to_update.append("preco = %s")
        values.append(produto.preco)
    if produto.perc_deconto is not None:
        fields_to_update.append("perc_deconto = %s")
        values.append(produto.perc_deconto)
    if produto.disp is not None:
        fields_to_update.append("disp = %s")
        values.append(produto.disp)

    values.append(produto_id)

    query = f"UPDATE produto SET {', '.join(fields_to_update)} WHERE produto_id = %s RETURNING *"
    
    cursor.execute(query, values)
    updated_produto = cursor.fetchone()
    conn.commit()
    cursor.close()
    conn.close()
    return updated_produto

def create_produto(produto: schemas.ProdutoCreate):
    conn = get_connection()
    cursor = get_cursor(conn)
    query = """
        INSERT INTO produto (nome, descricao, preco, perc_deconto, disp)
        VALUES (%s, %s, %s, %s, %s)
        RETURNING produto_id, nome, descricao, preco, perc_deconto, disp
    """
    cursor.execute(query, (produto.nome, produto.descricao, produto.preco, produto.perc_deconto, produto.disp))
    conn.commit()
    result = cursor.fetchone()
    cursor.close()
    conn.close()
    return result

def delete_produto(produto_id: int):
    conn = get_connection()
    cursor = get_cursor(conn)
    produto_info = None

    try:
        cursor.execute("SELECT 1 FROM pedido WHERE produto_id = %s LIMIT 1", (produto_id,))
        if cursor.fetchone():
            raise ValueError(f"Erro: Impossível excluir produto {produto_id}. Produto está em uso em um pedido.")

        cursor.execute("SELECT produto_id, nome FROM produto WHERE produto_id = %s", (produto_id,))
        produto_info = cursor.fetchone()

        if produto_info:
            query = "DELETE FROM produto WHERE produto_id = %s"
            cursor.execute(query, (produto_id,))
            conn.commit()
            return f'Produto com ID {produto_id} deletado com sucesso.'
        else:
            return f'Produto com ID {produto_id} não encontrado.'

    except Exception as e:
        conn.rollback()
        raise e

    finally:
        cursor.close()
        conn.close()

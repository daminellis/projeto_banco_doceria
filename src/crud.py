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
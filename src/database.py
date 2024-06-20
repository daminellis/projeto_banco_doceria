import psycopg2
from psycopg2.extras import RealDictCursor

DATABASE_URL = "postgresql://sugarbyte_user:S5lNB1mP6wfgTPv7u5dUA0JXYd40SszW@dpg-cpl1t9ud3nmc73ddpq20-a.oregon-postgres.render.com:5432/sugarbyte"

def get_connection():
    try:
        conn = psycopg2.connect(DATABASE_URL)
        return conn
    except (Exception, psycopg2.DatabaseError) as error:
        print(f"Erro de conexão: {error}")
        raise

def get_cursor(conn):
    try:
        return conn.cursor(cursor_factory=RealDictCursor)
    except (Exception, psycopg2.DatabaseError) as error:
        print(f"Erro de cursor: {error}")
        raise

def check_connection():
    try:
        conn = get_connection()
        cursor = get_cursor(conn)
        cursor.execute("SELECT 1;")
        result = cursor.fetchone()
        print(f"Conexão bem-sucedida: {result}")
        cursor.close()
        conn.close()
    except (Exception, psycopg2.DatabaseError) as error:
        print(f"Erro de conexão: {error}")

if __name__ == "__main__":
    check_connection()

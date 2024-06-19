import psycopg2

def connect():
    try:
        conn = psycopg2.connect(
            dbname="sugarbyte", 
            user="sugarbyte_user", 
            password="S5lNB1mP6wfgTPv7u5dUA0JXYd40SszW", 
            host="dpg-cpl1t9ud3nmc73ddpq20-a.oregon-postgres.render.com", 
            port="5432",  # geralmente é 5432 para PostgreSQL
            #options='-c client_encoding=UTF8'
        )
        print("Conexão bem-sucedida")
        conn.close()  # Fechar a conexão após o teste
    except (Exception, psycopg2.DatabaseError) as error:
        print(f"Erro ao conectar ao banco de dados: {error}")

if __name__ == "__main__":
    connect()

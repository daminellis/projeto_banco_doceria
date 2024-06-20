from fastapi import FastAPI, HTTPException
from typing import List
import schemas, crud

app = FastAPI()

@app.post("/produtos/", response_model=schemas.Produto)
def create_produto(produto: schemas.ProdutoCreate):
    return crud.create_produto(produto=produto)

@app.get("/produtos/{produto_id}", response_model=schemas.Produto)
def read_produto(produto_id: int):
    db_produto = crud.get_produto(produto_id=produto_id)
    if db_produto is None:
        raise HTTPException(status_code=404, detail="Produto não encontrado")
    return db_produto

@app.get("/produtos/", response_model=List[schemas.Produto])
def read_produtos(skip: int = 0, limit: int = 10):
    produtos = crud.get_produtos(skip=skip, limit=limit)
    return produtos

@app.delete("/produtos/{produto_id}", response_model=schemas.Produto)
def delete_produto(produto_id: int):
    db_produto = crud.get_produto(produto_id=produto_id)
    if db_produto is None:
        raise HTTPException(status_code=404, detail="Produto não encontrado")
    return crud.delete_produto(produto_id=produto_id)

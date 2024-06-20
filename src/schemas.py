from pydantic import BaseModel
from typing import Optional

class ProdutoBase(BaseModel):
    nome: str
    descricao: str
    preco: float
    perc_deconto: Optional[float] = None
    disp: Optional[bool] = None

class ProdutoCreate(ProdutoBase):
    pass

class Produto(ProdutoBase):
    produto_id: int

    class Config:
        orm_mode = True

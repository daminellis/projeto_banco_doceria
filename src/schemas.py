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
        from_attributes = True

class ProdutoUpdate(BaseModel):
    nome: Optional[str] = None
    descricao: Optional[str] = None
    preco: Optional[float] = None
    perc_deconto: Optional[float] = None
    disp: Optional[bool] = None

    class Config:
        from_attributes = True

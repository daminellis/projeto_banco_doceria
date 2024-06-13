from sqlalchemy import Column, Integer, String, Text, Numeric, Boolean, ForeignKey, DateTime, CHAR, DECIMAL
from sqlalchemy.orm import relationship
from database import Base

class Produto(Base):
    __tablename__ = "produto"
    produto_id = Column(Integer, primary_key=True, autoincrement=True)
    nome = Column(String(100), nullable=False)
    descricao = Column(Text, nullable=False)
    preco = Column(Numeric(10, 2), nullable=False)
    perc_deconto = Column(DECIMAL)
    disp = Column(Boolean)

    ingredientes = relationship("ProdutoIngrediente", back_populates="produto")

class Ingrediente(Base):
    __tablename__ = "ingrediente"
    ingrediente_id = Column(Integer, primary_key=True, autoincrement=True)
    un_medida_id = Column(Integer, ForeignKey("un_medida.un_medida_id"))
    nome = Column(String(100), nullable=False)
    descricao = Column(Text, nullable=False)
    qtd_estoque = Column(Numeric(10, 2), nullable=False)

    un_medida = relationship("UnMedida")
    produtos = relationship("ProdutoIngrediente", back_populates="ingrediente")

class UnMedida(Base):
    __tablename__ = "un_medida"
    un_medida_id = Column(Integer, primary_key=True, autoincrement=True)
    nm_medida = Column(String(20), nullable=False)
    sigla = Column(CHAR(2), nullable=False)

class ProdutoIngrediente(Base):
    __tablename__ = "produto_ingrediente"
    produto_id = Column(Integer, ForeignKey("produto.produto_id"), primary_key=True)
    ingrediente_id = Column(Integer, ForeignKey("ingrediente.ingrediente_id"), primary_key=True)
    quantidade = Column(Numeric(10, 2), nullable=False)
    unidade_medida = Column(String(20))

    produto = relationship("Produto", back_populates="ingredientes")
    ingrediente = relationship("Ingrediente", back_populates="produtos")

class Cliente(Base):
    __tablename__ = "cliente"
    cliente_id = Column(Integer, primary_key=True, autoincrement=True)
    nome = Column(String(100), nullable=False)
    email = Column(String(100), nullable=False)
    telefone = Column(String(20), nullable=False)
    endereco = Column(String(200), nullable=False)

    pedidos = relationship("Pedido", back_populates="cliente")

class Pedido(Base):
    __tablename__ = "pedido"
    pedido_id = Column(Integer, primary_key=True, autoincrement=True)
    cliente_id = Column(Integer, ForeignKey("cliente.cliente_id"))
    produto_id = Column(Integer, ForeignKey("produto.produto_id"))
    pag_id = Column(Integer, ForeignKey("pagamento.pag_id"))
    data_pedido = Column(DateTime, nullable=False)
    status = Column(String(50), nullable=False)

    cliente = relationship("Cliente", back_populates="pedidos")
    produto = relationship("Produto")
    pagamento = relationship("Pagamento")

class Pagamento(Base):
    __tablename__ = "pagamento"
    pag_id = Column(Integer, primary_key=True, autoincrement=True)
    dt_pag = Column(DateTime, nullable=False)

    tipo_pagamentos = relationship("TipoPagamento", back_populates="pagamento")
    pedidos = relationship("Pedido", back_populates="pagamento")

class TipoPagamento(Base):
    __tablename__ = "tipo_pagamento"
    tipo_pag_id = Column(Integer, primary_key=True, autoincrement=True)
    pag_id = Column(Integer, ForeignKey("pagamento.pag_id"))
    nome = Column(String(10), nullable=False)

    pagamento = relationship("Pagamento", back_populates="tipo_pagamentos")

class Cardapio(Base):
    __tablename__ = "cardapio"
    card_id = Column(Integer, primary_key=True, autoincrement=True)
    produto_id = Column(Integer, ForeignKey("produto.produto_id"))

class CategoriaCardapio(Base):
    __tablename__ = "categoria_cardapio"
    cat_id = Column(Integer, primary_key=True, autoincrement=True)
    card_id = Column(Integer, ForeignKey("cardapio.card_id"))

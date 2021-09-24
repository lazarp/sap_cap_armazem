namespace armazem;

entity Pedidos {
    key id         : Integer;
        itens      : Association to many Itens
                         on itens.pedido_id = id; // PEDIDO 1 - N ITENS
        valorTotal : Decimal(9, 2);
        data       : Date;
        vendedor   : String;
        cliente    : String;
}

entity Itens {
    key id            : Integer;
        pedido_id     : Integer; // PEDIDO 1 - N ITENS
        ferramenta_id : Integer;
        ferramenta    : Association to Ferramentas
                            on ferramenta.id = ferramenta_id; // ITENS N - 1 FERRAMENTA
        quantidade    : Integer;
        subtotal      : Decimal(9, 2);
}

entity Ferramentas {
    key id        : Integer;
        descricao : String;
        preco     : Decimal(9, 2);
        estoque   : Integer;
}
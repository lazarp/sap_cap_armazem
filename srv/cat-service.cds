using {armazem as my} from '../db/data-model';

service CatalogService {

    entity Ferramentas as projection on my.Ferramentas;
    entity Pedidos     as projection on my.Pedidos;
    entity Itens       as projection on my.Itens;
}

type userScopes {
    identified    : Boolean;
    authenticated : Boolean;
    User          : Boolean;
    Admin         : Boolean;
};

type user {
    user   : String;
    locale : String;
    scopes : userScopes;
};

function userInfo() returns user;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
<<<<<<< Updated upstream
=======
        username_cameriere varchar(255),
>>>>>>> Stashed changes
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
<<<<<<< Updated upstream
=======
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
>>>>>>> Stashed changes
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria serial not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine serial not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria serial not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine serial not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria serial not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine serial not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence categoria_id_categoria_seq start with 1 increment by 50;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine serial not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine serial not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;
create sequence id_categoria_seq start with 1 increment by 1;
create sequence id_elemento_seq start with 1 increment by 1;
create sequence id_menu_seq start with 1 increment by 1;
create sequence id_ordine_seq start with 1 increment by 1;
create sequence id_ristorante_seq start with 1 increment by 1;
create sequence id_tavolo_seq start with 1 increment by 1;

    create table allergene (
       nome varchar(255) not null,
        primary key (nome)
    );

    create table allergia (
       id_elemento integer not null,
        allergene varchar(255) not null
    );

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento integer not null,
        descrizione varchar(255),
        nome varchar(255),
        prezzo float4,
        id_categoria integer,
        primary key (id_elemento)
    );

    create table menu (
       id_menu integer not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ordinazione (
       id_elemento integer not null,
        id_ordine integer not null
    );

    create table ordine (
       id_ordine integer not null,
        id_tavolo integer,
        primary key (id_ordine)
    );

    create table ristorante (
       id_ristorante integer not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table tavolo (
       id_tavolo integer not null,
        occupato boolean,
        posti integer,
        username_cameriere varchar(255),
        id_ristorante integer,
        primary key (id_tavolo)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists allergia 
       add constraint FKenetpo854cyk13m0lr2cx20pi 
       foreign key (allergene) 
       references allergene;

    alter table if exists allergia 
       add constraint FKr3j1jcqupwur10tm2hmxc3vrd 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists categoria 
       add constraint FK7sl2hag5q6tjjgajdbqlq5blp 
       foreign key (id_menu) 
       references menu;

    alter table if exists elemento 
       add constraint FK7c98cnfsldokgorotjgy5dk9w 
       foreign key (id_categoria) 
       references categoria 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists ordinazione 
       add constraint FKa1r5uatnvcl0829vidygetrxs 
       foreign key (id_ordine) 
       references ordine;

    alter table if exists ordinazione 
       add constraint FKqewrash8k8swjyiyld70i297v 
       foreign key (id_elemento) 
       references elemento;

    alter table if exists ordine 
       add constraint FKeqk4wbgp4bm8pwdcqy32w5xxr 
       foreign key (id_tavolo) 
       references tavolo 
       on delete cascade;

    alter table if exists tavolo 
       add constraint FKauvtvp4ls2ijk7efgw5ytsbtw 
       foreign key (username_cameriere) 
       references utente;

    alter table if exists tavolo 
       add constraint FKi070cwdmd6tj2sywp96itncns 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;


    create table ristorante (
       id_ristorante integer not null,
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        primary key (username)
    );

    create table ristorante (
       id_ristorante integer not null,
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        primary key (username)
    );

    create table ristorante (
       id_ristorante integer not null,
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        primary key (username)
    );

    create table ristorante (
       id_ristorante integer not null,
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        primary key (username)
    );

    create table ristorante (
       id_ristorante integer not null,
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table ristorante (
       id_ristorante serial not null,
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table ristorante (
       id_ristorante serial not null,
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table ristorante (
       id_ristorante serial not null,
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table ristorante (
       id_ristorante serial not null,
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

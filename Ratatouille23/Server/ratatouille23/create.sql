
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

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        ristorante_id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKb2n1ml8vii5v12i6mg87jpocw 
       foreign key (ristorante_id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        ristorante_id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKb2n1ml8vii5v12i6mg87jpocw 
       foreign key (ristorante_id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        ristorante_id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        ristorante_id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKebadei83xe3alnh24abh0u1cf 
       foreign key (ristorante_id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKb2n1ml8vii5v12i6mg87jpocw 
       foreign key (ristorante_id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        ristorante_id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        ristorante_id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKebadei83xe3alnh24abh0u1cf 
       foreign key (ristorante_id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKb2n1ml8vii5v12i6mg87jpocw 
       foreign key (ristorante_id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        ristorante_id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKb2n1ml8vii5v12i6mg87jpocw 
       foreign key (ristorante_id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table menu (
       id_menu serial not null,
        id_ristorante integer,
        primary key (id_menu)
    );

    create table ristorante (
       id_ristorante serial not null,
        indirizzo varchar(255),
        nome varchar(255),
        telefono varchar(255),
        primary key (id_ristorante)
    );

    create table utente (
       username varchar(255) not null,
        password varchar(255) not null,
        ruolo ENUM('admin', 'supervisore', 'cameriere','cuoco') not null,
        id_ristorante integer,
        primary key (username)
    );

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

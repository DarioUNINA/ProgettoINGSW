
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

    create table elemento (
       id_elemento serial not null,
        id_menu integer,
        primary key (id_elemento)
    );

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

    alter table if exists elemento 
       add constraint FKk20drd2mimlfx536smq4ytlkb 
       foreign key (id_menu) 
       references menu 
       on delete cascade;

    alter table if exists menu 
       add constraint FKcn7cg1eeunjsl6bqan7d4svyc 
       foreign key (id_ristorante) 
       references ristorante;

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        id_categoria integer,
        primary key (id_elemento)
    );

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

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        id_categoria integer,
        primary key (id_elemento)
    );

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

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        id_categoria integer,
        primary key (id_elemento)
    );

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

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        id_categoria integer,
        primary key (id_elemento)
    );

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

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        id_categoria integer,
        primary key (id_elemento)
    );

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

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        id_categoria integer,
        primary key (id_elemento)
    );

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

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        id_categoria integer,
        primary key (id_elemento)
    );

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

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        id_categoria integer,
        primary key (id_elemento)
    );

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

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        id_categoria integer,
        primary key (id_elemento)
    );

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

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        id_categoria integer,
        primary key (id_elemento)
    );

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

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        id_categoria integer,
        primary key (id_elemento)
    );

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

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        id_categoria integer,
        primary key (id_elemento)
    );

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

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        id_categoria integer,
        primary key (id_elemento)
    );

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

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        id_categoria integer,
        primary key (id_elemento)
    );

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

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        id_categoria integer,
        primary key (id_elemento)
    );

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

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        id_categoria integer,
        primary key (id_elemento)
    );

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

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        id_categoria integer,
        primary key (id_elemento)
    );

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

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        id_categoria integer,
        primary key (id_elemento)
    );

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

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        id_categoria integer,
        primary key (id_elemento)
    );

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

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        id_categoria integer,
        primary key (id_elemento)
    );

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

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

    create table categoria (
       id_categoria integer not null,
        nome varchar(255) not null,
        id_menu integer,
        primary key (id_categoria)
    );

    create table elemento (
       id_elemento serial not null,
        id_categoria integer,
        primary key (id_elemento)
    );

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

    alter table if exists utente 
       add constraint FKkq3kqqcspxtvi490xjqx62ipu 
       foreign key (id_ristorante) 
       references ristorante 
       on delete cascade;

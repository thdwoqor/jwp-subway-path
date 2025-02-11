create table IF NOT EXISTS STATION
(
    id   bigint auto_increment not null,
    name varchar(255) not null unique,
    primary key (id)
);

create table IF NOT EXISTS LINE
(
    id    bigint auto_increment not null,
    name  varchar(255) not null unique,
    color varchar(20)  not null,
    primary key (id)
);

create table IF NOT EXISTS SECTION
(
    id              bigint auto_increment not null,
    line_id         bigint    not null,
    up_station_id   bigint    not null,
    down_station_id bigint    not null,
    distance        int       not null,
    created_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at      TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    primary key (id),
    foreign key (line_id) references LINE (id),
    foreign key (up_station_id) references STATION (id),
    foreign key (down_station_id) references STATION (id)
);

DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS reviews CASCADE;


CREATE TABLE users(
    uid         varchar(32),
    name        varchar(255),
    primary key (uid)
);

CREATE TABLE products(
    pid         char(10),
    primary key (pid)
);

CREATE TABLE reviews(
    uid         varchar(32),
    pid         char(10),
    text        text,
    summary     text,
    rating      int,
    posHelpful  int,
    negHelpful  int,
    time        DATE,
    primary key (uid, pid),
    foreign key (uid) references users (uid),
    foreign key (pid) references products (pid)
);
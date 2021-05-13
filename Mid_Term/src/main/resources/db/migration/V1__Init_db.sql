create table users (
    id int NOT NULL,
    name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    subscribe VARCHAR(255) NOT NULL,
    type VARCHAR(255) NOT NULL
);

create table musics (
    id int NOT NULL,
    name VARCHAR(255) NOT NULL,
    yearOfPublish int NOT NULL,
    min VARCHAR(255) NOT NULL
);
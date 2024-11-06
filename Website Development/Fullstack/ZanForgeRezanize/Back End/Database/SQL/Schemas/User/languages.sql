-- id
-- language_name

CREATE TABLE languages (
    id SMALLINT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
    language_name VARCHAR(255) NOT NULL
);
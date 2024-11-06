-- id
-- country_name
-- country_code

CREATE TABLE countries (
    id SMALLINT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
    country_name VARCHAR(70) NOT NULL
    country_code VARCHAR(40) NOT NULL UNIQUE
);
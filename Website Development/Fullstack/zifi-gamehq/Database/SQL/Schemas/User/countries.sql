-- id
-- country_name
-- country_code

CREATE TABLE IF NOT EXISTS countries (
    id SMALLINT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
    country_name VARCHAR(70) NOT NULL,
    country_code VARCHAR(15) NOT NULL UNIQUE,
    phone_country_code VARCHAR(15) NOT NULL
);
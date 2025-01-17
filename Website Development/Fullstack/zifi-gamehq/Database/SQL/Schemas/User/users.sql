-- CREATE SCHEMA IF NOT EXISTS users;

-- SOURCE countries.sql;
-- SOURCE languages.sql;
-- SOURCE user_roles.sql;
-- SOURCE users.sql;
-- SOURCE user_auth_logs.sql;
-- SOURCE user_password_change_logs.sql;
-- SOURCE user_preferences.sql;

-- id(performance) \ uuid(scalable, secure)
-- first_name
-- last_name
-- country
-- username[unique]
-- email[unique]
-- phone_number[unique]
-- password_hash[min_length = 8]
-- profile_picture
-- role
-- is_active
-- created_at
-- activated_at
-- updated_at

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255)  NOT NULL,
    country_id SMALLINT NOT NULL,
    username VARCHAR(255) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    phone_number VARCHAR(40) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    profile_picture_url VARCHAR(255),
    role_id SMALLINT NOT NULL,
    is_active BOOLEAN NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    activated_at TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_country_id FOREIGN KEY (country_id) REFERENCES countries(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_role_id FOREIGN KEY (role_id) REFERENCES user_roles(id) ON DELETE RESTRICT ON UPDATE CASCADE
);
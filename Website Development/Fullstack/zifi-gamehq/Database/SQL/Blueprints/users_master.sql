-- id
-- language_name

CREATE TABLE IF NOT EXISTS languages (
    id SMALLINT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
    language_name VARCHAR(255) NOT NULL
);
-- CREATE SCHEMA IF NOT EXISTS users;

-- SOURCE countries.sql;
-- SOURCE languages.sql;
-- SOURCE user_roles.sql;
-- SOURCE users.sql;
-- SOURCE user_auth_logs.sql;
-- SOURCE user_password_change_logs.sql;
-- SOURCE user_preferences.sql;

-- id
-- role_name[unique]

CREATE TABLE IF NOT EXISTS user_roles (
    id SMALLINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    role_name VARCHAR(50) NOT NULL UNIQUE
);


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
    username VARCHAR(255) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
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
-- id
-- username
-- ip
-- user_agent
-- timestamp

CREATE TABLE IF NOT EXISTS user_auth_logs (
    id BIGINT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL,
    ip VARCHAR(40) NOT NULL,
    user_agent VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_username_auth_logs FOREIGN KEY (username) REFERENCES users(username) ON DELETE RESTRICT ON UPDATE CASCADE
);
-- id
-- username
-- old_password_hash
-- new_password_hash
-- ip
-- user_agent
-- timestamp

CREATE TABLE IF NOT EXISTS user_password_change_logs (
    id BIGINT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL,
    old_password_hash VARCHAR(255) NOT NULL,
    new_password_hash VARCHAR(255) NOT NULL,
    ip VARCHAR(40) NOT NULL,
    user_agent VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_username_password_change_logs FOREIGN KEY (username) REFERENCES users(username) ON DELETE RESTRICT ON UPDATE CASCADE
);
-- id
-- username
-- language
-- ui_theme

CREATE TABLE IF NOT EXISTS users_preference (
    id INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL UNIQUE,
    language_id SMALLINT NOT NULL DEFAULT 1,
    ui_theme VARCHAR(255) NOT NULL DEFAULT 'system',

    CONSTRAINT fk_username_user_preferences FOREIGN KEY (username) REFERENCES users(username) ON DELETE RESTRICT ON UPDATE CASCADE
);
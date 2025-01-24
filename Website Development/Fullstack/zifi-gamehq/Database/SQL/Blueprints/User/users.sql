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

CREATE SCHEMA IF NOT EXISTS users;

CREATE TABLE IF NOT EXISTS users.users (
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT  NOT NULL,
    username VARCHAR(255) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    password_hash TEXT NOT NULL,
    profile_picture_url TEXT,
    role_id SMALLINT NOT NULL,
    is_active BOOLEAN NOT NULL DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    activated_at TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_role_id FOREIGN KEY (role_id) REFERENCES users.user_roles(id) ON DELETE RESTRICT ON UPDATE CASCADE
);
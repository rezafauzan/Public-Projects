-- id
-- role_name[unique]

CREATE SCHEMA IF NOT EXISTS users;

CREATE TABLE IF NOT EXISTS users.user_roles (
    id SERIAL PRIMARY KEY,
    role_name VARCHAR(40) NOT NULL UNIQUE
);
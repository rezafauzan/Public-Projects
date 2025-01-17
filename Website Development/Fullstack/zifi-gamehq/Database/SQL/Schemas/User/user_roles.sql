-- id
-- role_name[unique]

CREATE TABLE IF NOT EXISTS user_roles (
    id SMALLINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    role_name VARCHAR(50) NOT NULL UNIQUE
);
-- id
-- role_name[unique]

CREATE TABLE user_roles (
    id SMALLINT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
    role_name VARCHAR(255) NOT NULL UNIQUE
);
-- id
-- username
-- language
-- ui_theme

CREATE TABLE users_preference (
    id INT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL UNIQUE,
    language_id SMALLINT NOT NULL DEFAULT,
    ui_theme VARCHAR(255) NOT NULL DEFAULT,
);
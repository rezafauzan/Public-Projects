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
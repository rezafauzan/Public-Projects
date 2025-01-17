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
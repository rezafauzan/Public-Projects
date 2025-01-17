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
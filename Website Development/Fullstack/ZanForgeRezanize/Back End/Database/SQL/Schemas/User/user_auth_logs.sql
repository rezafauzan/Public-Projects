-- id
-- username
-- ip
-- user_agent
-- timestamp

CREATE TABLE user_auth_logs (
    id BIGINT NOT NULL UNIQUE PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL,
    ip VARCHAR(40) NOT NULL,
    user_agent VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
);
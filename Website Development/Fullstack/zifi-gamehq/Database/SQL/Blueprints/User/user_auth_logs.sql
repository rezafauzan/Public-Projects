-- id
-- username
-- ip
-- user_agent
-- timestamp

CREATE SCHEMA IF NOT EXISTS logs;

CREATE TABLE IF NOT EXISTS logs.user_auth_logs (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    ip VARCHAR(40) NOT NULL,
    user_agent TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users.users(id) ON DELETE RESTRICT ON UPDATE CASCADE
);
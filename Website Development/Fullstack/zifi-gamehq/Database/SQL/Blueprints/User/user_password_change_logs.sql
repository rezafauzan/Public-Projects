-- id
-- username
-- old_password_hash
-- new_password_hash
-- ip
-- user_agent
-- timestamp

CREATE SCHEMA IF NOT EXISTS logs;

CREATE TABLE IF NOT EXISTS logs.user_password_change_logs (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    old_password_hash TEXT NOT NULL,
    new_password_hash TEXT NOT NULL,
    ip VARCHAR(40) NOT NULL,
    user_agent TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users.users(id) ON DELETE RESTRICT ON UPDATE CASCADE
);
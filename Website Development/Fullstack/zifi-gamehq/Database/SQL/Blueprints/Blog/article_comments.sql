-- id
-- comment
-- created_at
-- updated_at

CREATE SCHEMA IF NOT EXISTS articles;

CREATE TABLE IF NOT EXISTS articles.article_comments (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    article_id INT NOT NULL,
    parent_id INT DEFAULT NULL,
    content TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_article_id FOREIGN KEY (article_id) REFERENCES articles.articles(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users.users(id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE INDEX index_user_id ON articles.article_comments (user_id);
CREATE INDEX index_parent_id ON articles.article_comments (parent_id);
CREATE INDEX index_article_id ON articles.article_comments (article_id);
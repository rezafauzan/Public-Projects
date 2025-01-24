-- id
-- title
-- content
-- meta
-- category_id
-- author_id
-- visibility ( draft | public | private | invited_only )
-- created_at
-- updated_at

CREATE SCHEMA IF NOT EXISTS articles;

CREATE TYPE visibility AS ENUM ( 'draft', 'public', 'private', 'invited_only' );

CREATE TABLE IF NOT EXISTS articles.articles (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    content TEXT,
    meta JSONB,
    category_id INT NOT NULL,
    author_id INT NOT NULL,
    visibility visibility,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_category_id FOREIGN KEY (category_id) REFERENCES articles.article_categories(id) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_author_id FOREIGN KEY (author_id) REFERENCES users.authors(id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE INDEX index_title_search ON articles.articles (title);
CREATE INDEX index_category_id ON articles.articles (category_id);
CREATE INDEX index_author_id ON articles.articles (author_id);
CREATE INDEX index_created_at ON articles.articles (created_at);
CREATE INDEX index_meta ON articles.articles USING gin (meta);
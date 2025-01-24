PGDMP     *                     }            zifi_gamehq    15.1    15.1 f    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16418    zifi_gamehq    DATABASE     �   CREATE DATABASE zifi_gamehq WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE zifi_gamehq;
                postgres    false                        2615    16546    articles    SCHEMA        CREATE SCHEMA articles;
    DROP SCHEMA articles;
                postgres    false                        2615    16496    logs    SCHEMA        CREATE SCHEMA logs;
    DROP SCHEMA logs;
                postgres    false                        2615    16419    users    SCHEMA        CREATE SCHEMA users;
    DROP SCHEMA users;
                postgres    false            y           1247    16672    reaction    TYPE     ~   CREATE TYPE articles.reaction AS ENUM (
    'bad_impression',
    'usefull',
    'inspiring',
    'excited',
    'awesome'
);
    DROP TYPE articles.reaction;
       articles          postgres    false    8            p           1247    16612 
   visibility    TYPE     j   CREATE TYPE articles.visibility AS ENUM (
    'draft',
    'public',
    'private',
    'invited_only'
);
    DROP TYPE articles.visibility;
       articles          postgres    false    8            �            1259    16559    article_categories    TABLE     �   CREATE TABLE articles.article_categories (
    id integer NOT NULL,
    article_category_name text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 (   DROP TABLE articles.article_categories;
       articles         heap    postgres    false    8            �            1259    16558    article_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE articles.article_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE articles.article_categories_id_seq;
       articles          postgres    false    8    230            �           0    0    article_categories_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE articles.article_categories_id_seq OWNED BY articles.article_categories.id;
          articles          postgres    false    229            �            1259    16648    article_comments    TABLE     8  CREATE TABLE articles.article_comments (
    id integer NOT NULL,
    user_id integer NOT NULL,
    article_id integer NOT NULL,
    parent_id integer,
    content text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 &   DROP TABLE articles.article_comments;
       articles         heap    postgres    false    8            �            1259    16647    article_comments_id_seq    SEQUENCE     �   CREATE SEQUENCE articles.article_comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE articles.article_comments_id_seq;
       articles          postgres    false    8    234            �           0    0    article_comments_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE articles.article_comments_id_seq OWNED BY articles.article_comments.id;
          articles          postgres    false    233            �            1259    16684    article_interactions    TABLE     3  CREATE TABLE articles.article_interactions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    article_id integer NOT NULL,
    reaction articles.reaction,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 *   DROP TABLE articles.article_interactions;
       articles         heap    postgres    false    8    889            �            1259    16683    article_interactions_id_seq    SEQUENCE     �   CREATE SEQUENCE articles.article_interactions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE articles.article_interactions_id_seq;
       articles          postgres    false    8    236            �           0    0    article_interactions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE articles.article_interactions_id_seq OWNED BY articles.article_interactions.id;
          articles          postgres    false    235            �            1259    16622    articles    TABLE     i  CREATE TABLE articles.articles (
    id integer NOT NULL,
    title text NOT NULL,
    content text,
    meta jsonb,
    category_id integer NOT NULL,
    author_id integer NOT NULL,
    visibility articles.visibility,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE articles.articles;
       articles         heap    postgres    false    880    8            �            1259    16621    articles_id_seq    SEQUENCE     �   CREATE SEQUENCE articles.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE articles.articles_id_seq;
       articles          postgres    false    8    232            �           0    0    articles_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE articles.articles_id_seq OWNED BY articles.articles.id;
          articles          postgres    false    231            �            1259    16513    user_auth_logs    TABLE     �   CREATE TABLE logs.user_auth_logs (
    id integer NOT NULL,
    user_id integer NOT NULL,
    ip character varying(40) NOT NULL,
    user_agent text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
     DROP TABLE logs.user_auth_logs;
       logs         heap    postgres    false    7            �            1259    16512    user_auth_logs_id_seq    SEQUENCE     �   CREATE SEQUENCE logs.user_auth_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE logs.user_auth_logs_id_seq;
       logs          postgres    false    7    224            �           0    0    user_auth_logs_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE logs.user_auth_logs_id_seq OWNED BY logs.user_auth_logs.id;
          logs          postgres    false    223            �            1259    16498    user_password_change_logs    TABLE     <  CREATE TABLE logs.user_password_change_logs (
    id integer NOT NULL,
    user_id integer NOT NULL,
    old_password_hash text NOT NULL,
    new_password_hash text NOT NULL,
    ip character varying(40) NOT NULL,
    user_agent text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 +   DROP TABLE logs.user_password_change_logs;
       logs         heap    postgres    false    7            �            1259    16497     user_password_change_logs_id_seq    SEQUENCE     �   CREATE SEQUENCE logs.user_password_change_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE logs.user_password_change_logs_id_seq;
       logs          postgres    false    7    222            �           0    0     user_password_change_logs_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE logs.user_password_change_logs_id_seq OWNED BY logs.user_password_change_logs.id;
          logs          postgres    false    221            �            1259    16548    article_categories    TABLE     �   CREATE TABLE users.article_categories (
    id integer NOT NULL,
    article_category_name text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 %   DROP TABLE users.article_categories;
       users         heap    postgres    false    6            �            1259    16547    article_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE users.article_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE users.article_categories_id_seq;
       users          postgres    false    228    6            �           0    0    article_categories_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE users.article_categories_id_seq OWNED BY users.article_categories.id;
          users          postgres    false    227            �            1259    16528    authors    TABLE     �  CREATE TABLE users.authors (
    id integer NOT NULL,
    user_id integer NOT NULL,
    author_bio text,
    author_facebook_link text,
    author_instagram_link text,
    author_linkedin_link text,
    author_github_link text,
    show_email boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE users.authors;
       users         heap    postgres    false    6            �            1259    16527    authors_id_seq    SEQUENCE     �   CREATE SEQUENCE users.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE users.authors_id_seq;
       users          postgres    false    226    6            �           0    0    authors_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE users.authors_id_seq OWNED BY users.authors.id;
          users          postgres    false    225            �            1259    16421 
   user_roles    TABLE     i   CREATE TABLE users.user_roles (
    id integer NOT NULL,
    role_name character varying(40) NOT NULL
);
    DROP TABLE users.user_roles;
       users         heap    postgres    false    6            �            1259    16420    user_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE users.user_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE users.user_roles_id_seq;
       users          postgres    false    218    6            �           0    0    user_roles_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE users.user_roles_id_seq OWNED BY users.user_roles.id;
          users          postgres    false    217            �            1259    16446    users    TABLE       CREATE TABLE users.users (
    id integer NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password_hash text NOT NULL,
    profile_picture_url text,
    role_id smallint NOT NULL,
    is_active boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    activated_at timestamp without time zone,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE users.users;
       users         heap    postgres    false    6            �            1259    16445    users_id_seq    SEQUENCE     �   CREATE SEQUENCE users.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE users.users_id_seq;
       users          postgres    false    6    220            �           0    0    users_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE users.users_id_seq OWNED BY users.users.id;
          users          postgres    false    219            �           2604    16562    article_categories id    DEFAULT     �   ALTER TABLE ONLY articles.article_categories ALTER COLUMN id SET DEFAULT nextval('articles.article_categories_id_seq'::regclass);
 F   ALTER TABLE articles.article_categories ALTER COLUMN id DROP DEFAULT;
       articles          postgres    false    230    229    230            �           2604    16651    article_comments id    DEFAULT     ~   ALTER TABLE ONLY articles.article_comments ALTER COLUMN id SET DEFAULT nextval('articles.article_comments_id_seq'::regclass);
 D   ALTER TABLE articles.article_comments ALTER COLUMN id DROP DEFAULT;
       articles          postgres    false    233    234    234            �           2604    16687    article_interactions id    DEFAULT     �   ALTER TABLE ONLY articles.article_interactions ALTER COLUMN id SET DEFAULT nextval('articles.article_interactions_id_seq'::regclass);
 H   ALTER TABLE articles.article_interactions ALTER COLUMN id DROP DEFAULT;
       articles          postgres    false    236    235    236            �           2604    16625    articles id    DEFAULT     n   ALTER TABLE ONLY articles.articles ALTER COLUMN id SET DEFAULT nextval('articles.articles_id_seq'::regclass);
 <   ALTER TABLE articles.articles ALTER COLUMN id DROP DEFAULT;
       articles          postgres    false    231    232    232            �           2604    16516    user_auth_logs id    DEFAULT     r   ALTER TABLE ONLY logs.user_auth_logs ALTER COLUMN id SET DEFAULT nextval('logs.user_auth_logs_id_seq'::regclass);
 >   ALTER TABLE logs.user_auth_logs ALTER COLUMN id DROP DEFAULT;
       logs          postgres    false    223    224    224            �           2604    16501    user_password_change_logs id    DEFAULT     �   ALTER TABLE ONLY logs.user_password_change_logs ALTER COLUMN id SET DEFAULT nextval('logs.user_password_change_logs_id_seq'::regclass);
 I   ALTER TABLE logs.user_password_change_logs ALTER COLUMN id DROP DEFAULT;
       logs          postgres    false    221    222    222            �           2604    16551    article_categories id    DEFAULT     |   ALTER TABLE ONLY users.article_categories ALTER COLUMN id SET DEFAULT nextval('users.article_categories_id_seq'::regclass);
 C   ALTER TABLE users.article_categories ALTER COLUMN id DROP DEFAULT;
       users          postgres    false    227    228    228            �           2604    16531 
   authors id    DEFAULT     f   ALTER TABLE ONLY users.authors ALTER COLUMN id SET DEFAULT nextval('users.authors_id_seq'::regclass);
 8   ALTER TABLE users.authors ALTER COLUMN id DROP DEFAULT;
       users          postgres    false    226    225    226            �           2604    16424    user_roles id    DEFAULT     l   ALTER TABLE ONLY users.user_roles ALTER COLUMN id SET DEFAULT nextval('users.user_roles_id_seq'::regclass);
 ;   ALTER TABLE users.user_roles ALTER COLUMN id DROP DEFAULT;
       users          postgres    false    217    218    218            �           2604    16449    users id    DEFAULT     b   ALTER TABLE ONLY users.users ALTER COLUMN id SET DEFAULT nextval('users.users_id_seq'::regclass);
 6   ALTER TABLE users.users ALTER COLUMN id DROP DEFAULT;
       users          postgres    false    219    220    220            �          0    16559    article_categories 
   TABLE DATA           a   COPY articles.article_categories (id, article_category_name, created_at, updated_at) FROM stdin;
    articles          postgres    false    230   Z}       �          0    16648    article_comments 
   TABLE DATA           q   COPY articles.article_comments (id, user_id, article_id, parent_id, content, created_at, updated_at) FROM stdin;
    articles          postgres    false    234   w}       �          0    16684    article_interactions 
   TABLE DATA           k   COPY articles.article_interactions (id, user_id, article_id, reaction, created_at, updated_at) FROM stdin;
    articles          postgres    false    236   �}       �          0    16622    articles 
   TABLE DATA           z   COPY articles.articles (id, title, content, meta, category_id, author_id, visibility, created_at, updated_at) FROM stdin;
    articles          postgres    false    232   �}       {          0    16513    user_auth_logs 
   TABLE DATA           O   COPY logs.user_auth_logs (id, user_id, ip, user_agent, created_at) FROM stdin;
    logs          postgres    false    224   �}       y          0    16498    user_password_change_logs 
   TABLE DATA           �   COPY logs.user_password_change_logs (id, user_id, old_password_hash, new_password_hash, ip, user_agent, created_at) FROM stdin;
    logs          postgres    false    222   �}                 0    16548    article_categories 
   TABLE DATA           ^   COPY users.article_categories (id, article_category_name, created_at, updated_at) FROM stdin;
    users          postgres    false    228   ~       }          0    16528    authors 
   TABLE DATA           �   COPY users.authors (id, user_id, author_bio, author_facebook_link, author_instagram_link, author_linkedin_link, author_github_link, show_email, created_at, updated_at) FROM stdin;
    users          postgres    false    226   %~       u          0    16421 
   user_roles 
   TABLE DATA           2   COPY users.user_roles (id, role_name) FROM stdin;
    users          postgres    false    218   B~       w          0    16446    users 
   TABLE DATA           �   COPY users.users (id, first_name, last_name, username, email, password_hash, profile_picture_url, role_id, is_active, created_at, activated_at, updated_at) FROM stdin;
    users          postgres    false    220   _~       �           0    0    article_categories_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('articles.article_categories_id_seq', 1, false);
          articles          postgres    false    229            �           0    0    article_comments_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('articles.article_comments_id_seq', 1, false);
          articles          postgres    false    233            �           0    0    article_interactions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('articles.article_interactions_id_seq', 1, false);
          articles          postgres    false    235            �           0    0    articles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('articles.articles_id_seq', 1, false);
          articles          postgres    false    231            �           0    0    user_auth_logs_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('logs.user_auth_logs_id_seq', 1, false);
          logs          postgres    false    223            �           0    0     user_password_change_logs_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('logs.user_password_change_logs_id_seq', 1, false);
          logs          postgres    false    221            �           0    0    article_categories_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('users.article_categories_id_seq', 1, false);
          users          postgres    false    227            �           0    0    authors_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('users.authors_id_seq', 1, false);
          users          postgres    false    225            �           0    0    user_roles_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('users.user_roles_id_seq', 1, false);
          users          postgres    false    217            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('users.users_id_seq', 1, false);
          users          postgres    false    219            �           2606    16568 *   article_categories article_categories_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY articles.article_categories
    ADD CONSTRAINT article_categories_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY articles.article_categories DROP CONSTRAINT article_categories_pkey;
       articles            postgres    false    230            �           2606    16657 &   article_comments article_comments_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY articles.article_comments
    ADD CONSTRAINT article_comments_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY articles.article_comments DROP CONSTRAINT article_comments_pkey;
       articles            postgres    false    234            �           2606    16691 .   article_interactions article_interactions_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY articles.article_interactions
    ADD CONSTRAINT article_interactions_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY articles.article_interactions DROP CONSTRAINT article_interactions_pkey;
       articles            postgres    false    236            �           2606    16631    articles articles_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY articles.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY articles.articles DROP CONSTRAINT articles_pkey;
       articles            postgres    false    232            �           2606    16521 "   user_auth_logs user_auth_logs_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY logs.user_auth_logs
    ADD CONSTRAINT user_auth_logs_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY logs.user_auth_logs DROP CONSTRAINT user_auth_logs_pkey;
       logs            postgres    false    224            �           2606    16506 8   user_password_change_logs user_password_change_logs_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY logs.user_password_change_logs
    ADD CONSTRAINT user_password_change_logs_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY logs.user_password_change_logs DROP CONSTRAINT user_password_change_logs_pkey;
       logs            postgres    false    222            �           2606    16557 *   article_categories article_categories_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY users.article_categories
    ADD CONSTRAINT article_categories_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY users.article_categories DROP CONSTRAINT article_categories_pkey;
       users            postgres    false    228            �           2606    16538    authors authors_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY users.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY users.authors DROP CONSTRAINT authors_pkey;
       users            postgres    false    226            �           2606    16540    authors authors_user_id_key 
   CONSTRAINT     X   ALTER TABLE ONLY users.authors
    ADD CONSTRAINT authors_user_id_key UNIQUE (user_id);
 D   ALTER TABLE ONLY users.authors DROP CONSTRAINT authors_user_id_key;
       users            postgres    false    226            �           2606    16426    user_roles user_roles_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY users.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY users.user_roles DROP CONSTRAINT user_roles_pkey;
       users            postgres    false    218            �           2606    16428 #   user_roles user_roles_role_name_key 
   CONSTRAINT     b   ALTER TABLE ONLY users.user_roles
    ADD CONSTRAINT user_roles_role_name_key UNIQUE (role_name);
 L   ALTER TABLE ONLY users.user_roles DROP CONSTRAINT user_roles_role_name_key;
       users            postgres    false    218            �           2606    16460    users users_email_key 
   CONSTRAINT     P   ALTER TABLE ONLY users.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 >   ALTER TABLE ONLY users.users DROP CONSTRAINT users_email_key;
       users            postgres    false    220            �           2606    16456    users users_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY users.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 9   ALTER TABLE ONLY users.users DROP CONSTRAINT users_pkey;
       users            postgres    false    220            �           2606    16458    users users_username_key 
   CONSTRAINT     V   ALTER TABLE ONLY users.users
    ADD CONSTRAINT users_username_key UNIQUE (username);
 A   ALTER TABLE ONLY users.users DROP CONSTRAINT users_username_key;
       users            postgres    false    220            �           1259    16570    index_article_category_name    INDEX     m   CREATE INDEX index_article_category_name ON articles.article_categories USING btree (article_category_name);
 1   DROP INDEX articles.index_article_category_name;
       articles            postgres    false    230            �           1259    16670    index_article_id    INDEX     U   CREATE INDEX index_article_id ON articles.article_comments USING btree (article_id);
 &   DROP INDEX articles.index_article_id;
       articles            postgres    false    234            �           1259    16644    index_author_id    INDEX     K   CREATE INDEX index_author_id ON articles.articles USING btree (author_id);
 %   DROP INDEX articles.index_author_id;
       articles            postgres    false    232            �           1259    16643    index_category_id    INDEX     O   CREATE INDEX index_category_id ON articles.articles USING btree (category_id);
 '   DROP INDEX articles.index_category_id;
       articles            postgres    false    232            �           1259    16645    index_created_at    INDEX     M   CREATE INDEX index_created_at ON articles.articles USING btree (created_at);
 &   DROP INDEX articles.index_created_at;
       articles            postgres    false    232            �           1259    16646 
   index_meta    INDEX     ?   CREATE INDEX index_meta ON articles.articles USING gin (meta);
     DROP INDEX articles.index_meta;
       articles            postgres    false    232            �           1259    16669    index_parent_id    INDEX     S   CREATE INDEX index_parent_id ON articles.article_comments USING btree (parent_id);
 %   DROP INDEX articles.index_parent_id;
       articles            postgres    false    234            �           1259    16642    index_title_search    INDEX     J   CREATE INDEX index_title_search ON articles.articles USING btree (title);
 (   DROP INDEX articles.index_title_search;
       articles            postgres    false    232            �           1259    16668    index_user_id    INDEX     O   CREATE INDEX index_user_id ON articles.article_comments USING btree (user_id);
 #   DROP INDEX articles.index_user_id;
       articles            postgres    false    234            �           2606    16658    article_comments fk_article_id    FK CONSTRAINT     �   ALTER TABLE ONLY articles.article_comments
    ADD CONSTRAINT fk_article_id FOREIGN KEY (article_id) REFERENCES articles.articles(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 J   ALTER TABLE ONLY articles.article_comments DROP CONSTRAINT fk_article_id;
       articles          postgres    false    232    234    3279            �           2606    16697 "   article_interactions fk_article_id    FK CONSTRAINT     �   ALTER TABLE ONLY articles.article_interactions
    ADD CONSTRAINT fk_article_id FOREIGN KEY (article_id) REFERENCES articles.articles(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 N   ALTER TABLE ONLY articles.article_interactions DROP CONSTRAINT fk_article_id;
       articles          postgres    false    236    3279    232            �           2606    16637    articles fk_author_id    FK CONSTRAINT     �   ALTER TABLE ONLY articles.articles
    ADD CONSTRAINT fk_author_id FOREIGN KEY (author_id) REFERENCES users.authors(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 A   ALTER TABLE ONLY articles.articles DROP CONSTRAINT fk_author_id;
       articles          postgres    false    3270    226    232            �           2606    16632    articles fk_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY articles.articles
    ADD CONSTRAINT fk_category_id FOREIGN KEY (category_id) REFERENCES articles.article_categories(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 C   ALTER TABLE ONLY articles.articles DROP CONSTRAINT fk_category_id;
       articles          postgres    false    232    230    3276            �           2606    16663    article_comments fk_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY articles.article_comments
    ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 G   ALTER TABLE ONLY articles.article_comments DROP CONSTRAINT fk_user_id;
       articles          postgres    false    3262    220    234            �           2606    16692    article_interactions fk_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY articles.article_interactions
    ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 K   ALTER TABLE ONLY articles.article_interactions DROP CONSTRAINT fk_user_id;
       articles          postgres    false    220    3262    236            �           2606    16507 $   user_password_change_logs fk_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY logs.user_password_change_logs
    ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 L   ALTER TABLE ONLY logs.user_password_change_logs DROP CONSTRAINT fk_user_id;
       logs          postgres    false    222    3262    220            �           2606    16522    user_auth_logs fk_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY logs.user_auth_logs
    ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 A   ALTER TABLE ONLY logs.user_auth_logs DROP CONSTRAINT fk_user_id;
       logs          postgres    false    224    220    3262            �           2606    16461    users fk_role_id    FK CONSTRAINT     �   ALTER TABLE ONLY users.users
    ADD CONSTRAINT fk_role_id FOREIGN KEY (role_id) REFERENCES users.user_roles(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 9   ALTER TABLE ONLY users.users DROP CONSTRAINT fk_role_id;
       users          postgres    false    218    3256    220            �           2606    16541    authors fk_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY users.authors
    ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 ;   ALTER TABLE ONLY users.authors DROP CONSTRAINT fk_user_id;
       users          postgres    false    220    226    3262            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      {      x������ � �      y      x������ � �            x������ � �      }      x������ � �      u      x������ � �      w      x������ � �     
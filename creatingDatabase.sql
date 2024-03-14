DROP TABLE IF EXISTS "user", "group", group_member, attachment, post, follower, like_post CASCADE;
DROP TYPE IF EXISTS role, file, visibility;

-- requête pour la création de la table utilisateur --
CREATE TABLE "user" (
    pseudo VARCHAR(100) PRIMARY KEY NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL,
    birth_date DATE NOT NULL,
    password VARCHAR(100) NOT NULL,
    notifications BOOLEAN DEFAULT TRUE,
    tuto BOOLEAN DEFAULT TRUE
);

-- création du type 'visibility' qui permet de choisir si le groupe est 'publique' ou 'privé' --
CREATE TYPE visibility AS ENUM ('public', 'private');

-- requête pour la création de la table group --
CREATE TABLE "group" (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description  TEXT,
    visibility visibility,
    super_admin VARCHAR(100),
    CONSTRAINT fk_super_admin
    FOREIGN KEY (super_admin)
    REFERENCES "user"(pseudo)
    ON DELETE CASCADE
);

-- création du type de rôles qui peuvent être administrés aux utilisateurs --
CREATE TYPE role AS ENUM ('administrateur', 'moderateur', 'editeur', 'visiteur');

-- requête pour la création de la table group_member --
CREATE TABLE group_member (
    user_pseudo VARCHAR(100) NOT NULL,
    CONSTRAINT fk_user_pseudo
    FOREIGN KEY(user_pseudo)
    REFERENCES "user"(pseudo),
    group_id INT NOT NULL,
    CONSTRAINT fk_group_id
    FOREIGN KEY (group_id)
    REFERENCES "group"(id),
    role role
);

-- création du type 'file' qui énumère tous les types de pièces-jointes qui pourront être ajoutées dans les posts --
CREATE TYPE file AS ENUM ('photo', 'document', 'video', 'url', 'post');

-- requête pour la création de la table attachment --
CREATE TABLE attachment (
    id SERIAL PRIMARY KEY,
    content VARCHAR(255),
    type file 
);

-- requête pour la création de la table post --
CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    user_pseudo VARCHAR(100) NOT NULL,
    CONSTRAINT fk_user
    FOREIGN KEY(user_pseudo) 
    REFERENCES "user"(pseudo)
    ON DELETE CASCADE,
    parent_id INT,
    CONSTRAINT fk_parent_id
    FOREIGN KEY (parent_id)
    REFERENCES post(id)
    ON DELETE SET NULL,
    attachment_id INT,
    CONSTRAINT fk_attachment_id
    FOREIGN KEY (attachment_id)
    REFERENCES attachment(id)
    ON DELETE SET NULL,
    creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    content TEXT NOT NULL,
    shareCounter INT
);

-- requête pour la création de la table follower --
CREATE TABLE follower (
    following_user_pseudo VARCHAR(100) NOT NULL,
    CONSTRAINT fk_following_user
    FOREIGN KEY (following_user_pseudo)
    REFERENCES "user"(pseudo)
    ON DELETE CASCADE,
    followed_user_pseudo VARCHAR(100) NOT NULL,
    CONSTRAINT fk_followed_user
    FOREIGN KEY (followed_user_pseudo)
    REFERENCES "user"(pseudo)
    ON DELETE CASCADE
);


-- requête pour la création de la table like_post --
CREATE TABLE like_post (
    user_pseudo VARCHAR(100) NOT NULL,
    CONSTRAINT fk_user_pseudo
    FOREIGN KEY (user_pseudo)
    REFERENCES "user"(pseudo)
    ON DELETE CASCADE,
    post_id INT NOT NULL,
    CONSTRAINT fk_post_id
    FOREIGN KEY (post_id)
    REFERENCES post(id)
    ON DELETE SET NULL
);
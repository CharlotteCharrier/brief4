-- 
/* ---------------- requête pour modifier le champs tuto dans la table user après la 1ère connexion ---------------- */
UPDATE "user" SET tuto = FALSE WHERE pseudo = 'Angiver';

/* ---------------- requête pour lire les données personnelles d'un utilisateur à partir de son pseudo ---------------- */
SELECT pseudo, email, birth_date FROM "user" WHERE pseudo = 'Atileture' ;

/* ---------------- requêtes pour récupérer les posts avec leur nombre de likes et de partages et leurs comentaires + limite des posts à 20 pour les 2 fils d'actualité ---------------- */

-- retourne le contenu de tous les posts et leurs pièces-jointes et leurs likes et trie les posts du plus récent au plus vieux --
SELECT p.id, p.content contenu, a.content piecesjointes, COUNT(l.post_id) likes FROM like_post l INNER JOIN post p ON l.post_id = p.id LEFT JOIN attachment a ON p.attachment_id = a.id WHERE parent_id IS NULL GROUP BY p.id, a.id ORDER BY p.creation_date DESC LIMIT 20 OFFSET 0;

-- retourne le contenu de tous les posts et leurs pièces-jointes et leurs likes et trie les posts du plus récent au plus vieux --
SELECT p.id, p.content, a.content, COUNT(l.post_id) likes FROM like_post l INNER JOIN post p ON l.post_id = p.id LEFT JOIN attachment a ON p.attachment_id = a.id WHERE parent_id IS NULL GROUP BY p.id, a.id ORDER BY likes DESC LIMIT 20 OFFSET 0;

-- retourne le nombre de partages d'un post en particulier --
SELECT COUNT(parent_id) FROM post p LEFT JOIN attachment a ON p.attachment_id = a.id WHERE parent_id = 2 AND a.type = 'post' GROUP BY a.type;

--retourne les commentaires d'un post avec leurs likes et leurs id si besoin de requêter les réponses à ces commentaires --
SELECT p.content, p.id, COUNT(post_id) FROM like_post l INNER JOIN post p ON p.id = l.post_id WHERE post_id = 11 GROUP BY p.content, p.id;

/* ---------------- requête pour afficher les paramètres utilisateurs ---------------- */
SELECT pseudo, notifications FROM "user" WHERE pseudo = 'Atileture';

/* ---------------- requête pour modifier les paramètres utilisateurs ---------------- */
UPDATE "user" SET notifications = FALSE WHERE pseudo = 'Atileture';

/* ---------------- requête pour retourner les profils dans la fonction de recherche par pseudo ---------------- */
SELECT pseudo FROM "user" WHERE LOWER (pseudo) LIKE '%al%';


/* ---------------- requête pour retourner les posts dans la fonction de recherche par mots-clés ---------------- */
SELECT content FROM post WHERE LOWER (content) LIKE '%lor%';

/* ---------------- requêtes pour filtrer les publications ---------------- */

-- par auteur --
SELECT p.id, p.content contenu, a.content piecesjointes, u.pseudo, COUNT(l.post_id) likes FROM like_post l  INNER JOIN post p ON l.post_id = p.id INNER JOIN "user" AS u ON u.pseudo = p.user_pseudo LEFT JOIN attachment a ON p.attachment_id = a.id WHERE u.pseudo = 'Shation54' GROUP BY p.id, a.id, u.pseudo;

-- par date --
SELECT p.id, p.content contenu, a.content piecesjointes, u.pseudo, COUNT (l.post_id) likes FROM like_post l INNER JOIN post p ON l.post_id = p.id INNER JOIN "user" AS u ON u.pseudo = p.user_pseudo LEFT JOIN attachment a ON p.attachment_id = a.id WHERE CAST(creation_date AS DATE) = '2024-01-22' GROUP BY p.id, a.id, u.pseudo;


/* ---------------- requête pour récupérer tous les membres d'un groupe avec leur rôle et leur superadmin ---------------- */
SELECT user_pseudo, role, name, super_admin FROM group_member gm INNER JOIN "user" u ON u.pseudo = gm.user_pseudo INNER JOIN "group" g ON g.id = gm.group_id WHERE g.name = 'group 5';

/* ---------------- changer le role d'un membre du groupe ---------------- */
UPDATE group_member SET role = 'administrateur' WHERE user_pseudo = 'Angiver';

/* ---------------- supprimer un membre du groupe ---------------- */
DELETE FROM group_member WHERE user_pseudo = 'Angiver';
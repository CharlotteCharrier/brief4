----------------- JEU DE DONNEES -----------------

/* ---------------- requête pour créer des utilisateurs ---------------- */
INSERT INTO "user" (email, birth_date, pseudo, password) VALUES 
('OdetteLacharite@rhyta.com','1998-11-28','Atileture','gei8thoo1K'),
('SavilleDagenais@superrito.com','1996-8-20','Scivers1996','wewaepheo7Ee'),
('MarlonDufresne@rhyta.com','2004-6-18','Camagirse','queibeeT1o'),
('AstridBienvenue@armyspy.com','1952-7-26','Angiver','lauWeigh5ch'),
('LaverneBler@einrot.com','1963-2-19','Romint','INee8vough'),
('EleonoredeLaunay@jourrapide.com','1974-6-22','Kiles1974','eesoshia8Ee'),
('CoretteGoguen@dayrep.com','1977-11-11','Boureack','paeC1qua'),
('PatienceDesforges@cuvox.de','1951-12-11-','Defre1951','ko3Ohkiqu'),
('BeaufortBourgeois@dayrep.com','1954-7-9','Shation54','euNaeneel5i'),
('AlitaDuclos@einrot.com','1947-11-9','Splentre','ohphoh0aiPh'),
('BelisardaLHiver@dayrep.com','1999-10-27','Dompaccough','EiGeiph3'),
('MartinPaquet@dayrep.com','1996-3-19','Fals1996','Boo2phohNo'),
('OrsonCamus@gustr.com','1953-11-25','Squess1953','wixeip8We'),
('GuillaumeRoussel@gustr.com','1942-6-10','Alkincom','eiL5ailo5Oo'),
('NoelProulx@teleworm.us','2000-12-18','Tionterly','rohDei2aig4');

/* ---------------- requête pour créer un post sans pièce-jointe ---------------- */
INSERT INTO post (user_pseudo, content, creation_date) VALUES 
('Angiver', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In eu mi bibendum neque egestas congue quisque. A condimentum vitae sapien pellentesque habitant. Aliquam eleifend mi in nulla posuere sollicitudin aliquam. Vitae nunc sed velit dignissim sodales ut eu. Porta lorem mollis aliquam ut porttitor. Odio eu feugiat pretium nibh ipsum consequat. Morbi leo urna molestie at elementum. Venenatis urna cursus eget nunc scelerisque. Montes nascetur ridiculus mus mauris vitae ultricies leo. A condimentum vitae sapien pellentesque habitant morbi. Id diam maecenas ultricies mi eget mauris. Eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis. Urna cursus eget nunc scelerisque viverra mauris in. Mi in nulla posuere sollicitudin aliquam ultrices. Tellus at urna condimentum mattis pellentesque id. Interdum velit euismod in pellentesque. Accumsan tortor posuere ac ut consequat semper viverra. At tellus at urna condimentum mattis pellentesque id nibh tortor. Nec sagittis aliquam malesuada bibendum arcu.', '2022-06-22 10:10:25-07'), 
('Romint', 'Eros in cursus turpis massa. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. Eu consequat ac felis donec et odio pellentesque diam. Massa massa ultricies mi quis hendrerit dolor magna eget est. Cras pulvinar mattis nunc sed blandit libero volutpat sed cras. Tellus rutrum tellus pellentesque eu tincidunt tortor aliquam nulla. Bibendum arcu vitae elementum curabitur vitae nunc sed velit dignissim. Facilisis gravida neque convallis a cras. Suspendisse interdum consectetur libero id faucibus nisl. Pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus. Proin libero nunc consequat interdum varius sit amet mattis. Iaculis at erat pellentesque adipiscing commodo elit at imperdiet dui. In fermentum et sollicitudin ac orci phasellus. Id donec ultrices tincidunt arcu non sodales neque sodales. Elit at imperdiet dui accumsan sit amet nulla facilisi morbi. Senectus et netus et malesuada fames ac turpis egestas. Turpis in eu mi bibendum neque egestas congue. Diam phasellus vestibulum lorem sed risus ultricies tristique.', '2022-04-22 19:10:25-07'),
('Boureack', 'Eros in cursus turpis massa. Sit amet mauris commodo quis imperdiet massa tincidunt nunc. Eu consequat ac felis donec et odio pellentesque diam. Massa massa ultricies mi quis hendrerit dolor magna eget est. Cras pulvinar mattis nunc sed blandit libero volutpat sed cras. Tellus rutrum tellus pellentesque eu tincidunt tortor aliquam nulla. Bibendum arcu vitae elementum curabitur vitae nunc sed velit dignissim. Facilisis gravida neque convallis a cras. Suspendisse interdum consectetur libero id faucibus nisl. Pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus. Proin libero nunc consequat interdum varius sit amet mattis. Iaculis at erat pellentesque adipiscing commodo elit at imperdiet dui. In fermentum et sollicitudin ac orci phasellus. Id donec ultrices tincidunt arcu non sodales neque sodales. Elit at imperdiet dui accumsan sit amet nulla facilisi morbi. Senectus et netus et malesuada fames ac turpis egestas. Turpis in eu mi bibendum neque egestas congue. Diam phasellus vestibulum lorem sed risus ultricies tristique.', '2023-06-22 10:10:25-07'),
('Boureack', 'Ac ut consequat semper viverra nam libero justo. Sit amet dictum sit amet justo. Tempus quam pellentesque nec nam aliquam sem. Rutrum tellus pellentesque eu tincidunt tortor aliquam nulla facilisi cras. Fermentum leo vel orci porta. Diam ut venenatis tellus in. Enim nec dui nunc mattis enim. Vel orci porta non pulvinar neque. Arcu dictum varius duis at consectetur. Elit duis tristique sollicitudin nibh sit amet commodo nulla facilisi.', '2021-06-22 19:10:25-07'),
('Defre1951', 'Eget magna fermentum iaculis eu non. Amet tellus cras adipiscing enim eu turpis. Mauris in aliquam sem fringilla ut morbi. Faucibus a pellentesque sit amet porttitor eget dolor morbi non. Pharetra massa massa ultricies mi quis hendrerit dolor magna. Ut lectus arcu bibendum at varius vel pharetra vel turpis. Proin libero nunc consequat interdum varius sit. Lorem mollis aliquam ut porttitor leo. Integer enim neque volutpat ac. Nulla aliquet enim tortor at auctor urna nunc id. Lectus nulla at volutpat diam ut venenatis tellus. Praesent semper feugiat nibh sed pulvinar. Vel orci porta non pulvinar neque laoreet suspendisse interdum. Imperdiet sed euismod nisi porta. Fames ac turpis egestas integer eget aliquet. Volutpat sed cras ornare arcu dui vivamus. Placerat vestibulum lectus mauris ultrices eros.', '2023-10-22 19:10:25-07'),
('Camagirse', 'Eget magna fermentum iaculis eu non. Amet tellus cras adipiscing enim eu turpis. Mauris in aliquam sem fringilla ut morbi. Faucibus a pellentesque sit amet porttitor eget dolor morbi non. Pharetra massa massa ultricies mi quis hendrerit dolor magna. Ut lectus arcu bibendum at varius vel pharetra vel turpis. Proin libero nunc consequat interdum varius sit. Lorem mollis aliquam ut porttitor leo. Integer enim neque volutpat ac. Nulla aliquet enim tortor at auctor urna nunc id. Lectus nulla at volutpat diam ut venenatis tellus. Praesent semper feugiat nibh sed pulvinar. Vel orci porta non pulvinar neque laoreet suspendisse interdum. Imperdiet sed euismod nisi porta. Fames ac turpis egestas integer eget aliquet. Volutpat sed cras ornare arcu dui vivamus. Placerat vestibulum lectus mauris ultrices eros.', '2022-02-22 19:10:25-07'),
('Tionterly', 'Tortor at auctor urna nunc id. Ut pharetra sit amet aliquam. Sapien et ligula ullamcorper malesuada proin libero nunc consequat interdum. Erat imperdiet sed euismod nisi porta lorem. Ultricies tristique nulla aliquet enim tortor at auctor. Nam aliquam sem et tortor. Eget nunc lobortis mattis aliquam faucibus purus in massa. Donec pretium vulputate sapien nec sagittis. Risus commodo viverra maecenas accumsan lacus. Eu mi bibendum neque egestas congue.', '2023-04-22 19:10:25-07'),
('Tionterly', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pharetra magna ac placerat vestibulum. Volutpat blandit aliquam etiam erat.', '2024-01-22 19:10:25-07');

/* ---------------- requêtes pour créer un post avec une pièce-jointe ---------------- */
-- une photo --
WITH 
    inserted_post_with_attachment AS (
        INSERT INTO 
            attachment (content, type)
        VALUES
            ('https://www.pexels.com/fr-fr/photo/lac-et-montagne-417074/', 'photo') RETURNING id
    )
    INSERT INTO 
        post (user_pseudo, attachment_id, content, creation_date)
    SELECT 
        'Scivers1996', 
        id, 
        'sed sed risus pretium',
        '2022-06-22 19:10:25-07'
    FROM
        inserted_post_with_attachment;

-- une vidéo --
WITH 
    inserted_post_with_attachment AS (
        INSERT INTO 
            attachment (content, type)
        VALUES
            ('https://www.youtube.com/watch?v=Y07G73jC0R0', 'video') RETURNING id
    )
    INSERT INTO 
        post (user_pseudo, attachment_id, content, creation_date)
    SELECT 
        'Dompaccough', 
        id, 
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ultricies mi quis hendrerit dolor magna eget est lorem. Risus in hendrerit gravida rutrum quisque. Adipiscing elit ut aliquam purus sit amet. Quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis.',
        '2020-06-22 19:10:25-07'
    FROM
        inserted_post_with_attachment;

-- un autre post --
WITH 
    share_post AS (
        INSERT INTO 
            attachment (type)
        VALUES
            ('post') RETURNING id
    )
    INSERT INTO 
        post (user_pseudo, attachment_id, content, creation_date, parent_id)
    SELECT 
        'Angiver', 
        id, 
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        '2024-02-10 20:10:25-07',
        '2'
    FROM
        share_post;


/* ---------------- requête pour créer un post avec plusieurs pièces-jointes d'un même type ---------------- */
WITH 
    inserted_post_with_attachment AS (
        INSERT INTO 
            attachment (content, type)
        VALUES
            ('https://www.pexels.com/fr-fr/photo/photo-de-femme-assise-sur-un-bateau-ecartant-ses-bras-1371360/', 'photo'), ('https://www.pexels.com/fr-fr/photo/femme-prenant-des-photos-de-ruines-2087391/', 'photo') RETURNING id
    )
    INSERT INTO 
        post (user_pseudo, attachment_id, content, creation_date)
    SELECT 
        'Shation54', 
        id, 
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vivamus at augue eget arcu dictum varius duis. Odio ut enim blandit volutpat maecenas volutpat blandit aliquam. Adipiscing at in tellus integer feugiat scelerisque. Quam elementum pulvinar etiam non quam lacus.',
        '2022-12-22 19:10:25-07'
    FROM
        inserted_post_with_attachment;

/* ---------------- requête pour créer un post avec plusieurs pièces-jointes de différents types ---------------- */
WITH 
    inserted_post_with_attachment AS (
        INSERT INTO 
            attachment (content, type)
        VALUES
            ('https://www.pexels.com/fr-fr/photo/photo-de-femme-assise-sur-un-bateau-ecartant-ses-bras-1371360/', 'photo'), ('https://www.youtube.com/watch?v=Y07G73jC0R0', 'video') RETURNING id
    )
    INSERT INTO 
        post (user_pseudo, attachment_id, content, creation_date)
    SELECT 
        'Fals1996', 
        id, 
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
        '2022-12-22 19:10:25-07'
    FROM
        inserted_post_with_attachment;

/* ---------------- requête pour insérer des commentaires et des réponses aux commentaires ---------------- */
INSERT INTO post (user_pseudo, parent_id, creation_date, content) VALUES 
('Dompaccough', 15, '2024-03-10 19:10:25-07', 'potenti nullam ac' ),
('Kiles1974', 8, '2024-01-22 19:10:25-07', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.' ),
('Angiver', 9, '2023-01-22 19:10:25-07', 'enim'),
('Fals1996', 10, '2023-10-22 19:10:25-07', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
('Defre1951', 3, '2022-06-22 10:10:25-07', 'gravida cum sociis natoque penatibus'),
('Tionterly', 11, '2024-02-22 19:10:25-07', 'id nibh tortor id aliquet'),
('Atileture', 16, '2022-12-22 20:10:25-07', 'donec pretium vulputate sapien nec'),
('Splentre', 16, '2022-12-22 21:10:25-07', 'massa placerat duis ultricies lacus sed turpis tincidunt id aliquet'),
('Shation54', 16, '2022-12-23 18:10:25-07', 'vitae'),
('Fals1996', 16, '2022-12-23 21:10:25-07', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
('Fals1996', 24, '2022-12-22 21:15:25-07', 'at volutpat'),
('Fals1996', 25, '2022-12-22 21:30:25-07', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
('Fals1996', 27, '2022-12-23 21:12:25-07', 'nullam');

/* ---------------- requêtes pour insérer des likes ---------------- */
INSERT INTO like_post (user_pseudo, post_id) VALUES 
('Atileture', 6), ('Atileture', 10), ('Scivers1996', 8), ('Scivers1996', 4), ('Camagirse', 1), ('Angiver', 6), ('Angiver', 16), ('Romint', 3), ('Romint', 12), ('Romint', 14), ('Kiles1974', 15), ('Kiles1974', 2), ('Kiles1974', 5), ('Kiles1974', 15), ('Boureack', 13), ('Boureack', 15), ('Boureack', 8), ('Defre1951', 9), ('Shation54', 12), ('Shation54', 10), ('Shation54', 6), ('Shation54', 15), ('Splentre', 10), ('Splentre', 12), ('Dompaccough', 11), ('Fals1996', 16), ('Fals1996', 6), ('Fals1996', 3), ('Fals1996', 7), ('Fals1996', 13), ('Fals1996', 26), ('Squess1953', 2), ('Squess1953', 5), ('Squess1953', 12), ('Alkincom', 11), ('Alkincom', 10), ('Tionterly', 11), ('Tionterly', 16), ('Tionterly', 25);

/* ---------------- requête pour suivre un autre utilisateur ---------------- */
INSERT INTO follower (following_user_pseudo, followed_user_pseudo) VALUES 
('Atileture', 'Scivers1996'), ('Kiles1974', 'Camagirse'), ('Kiles1974', 'Fals1996'), ('Squess1953', 'Fals1996'), ('Alkincom', 'Fals1996'), ('Tionterly', 'Boureack'), ('Boureack', 'Splentre'), ('Splentre', 'Squess1953'), ('Splentre', 'Kiles1974'), ('Shation54', 'Fals1996'), ('Fals1996', 'Dompaccough'), ('Dompaccough', 'Fals1996'), ('Scivers1996', 'Romint');

/* ---------------- requête pour créer un groupe ---------------- */
INSERT INTO "group" (name, description, visibility, super_admin) VALUES 
('group1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'private', 'Scivers1996'),
('group 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'public', 'Romint');

/* ---------------- requête pour ajouter un membre à un groupe avec leur rôle ---------------- */
INSERT INTO group_member (user_pseudo, group_id, role) VALUES 
('Angiver', 1, 'administrateur'),
('Angiver', 2, 'visiteur'),
('Kiles1974', 2, 'editeur'),
('Kiles1974', 1, 'moderateur');
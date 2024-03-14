# brief4
# 1. Comprendre les besoins du client

“Bonjour, et merci de me recevoir aujourd'hui. Je suis à la recherche d'un développeur pour créer un prototype de réseau social miniature.

Votre rôle sera donc de créer la base de données et de préparer les requêtes que le développeur full-stack pourra ensuite intégrer dans son application facilement.

L'objectif a cette heure est donc de tester la faisabilité du projet et de valider les fonctionnalités principales du MVP (Minimum Valuable Product).

Avant toute choses, un utilisateurs qui voudra interagir avec le réseau social devra se créer un compte et pourra alors pendant cette première approche compléter sa page profil avec quelques informations personnelles.

Vous pourrez déjà préparer une requête permettant de lire les données qui seront injectés dans la page profile d'un utilisateur, probablement a partir d'un nom d'utilisateur.

Mais un utilisateur devra pouvoir accéder à la plateforme sans pour autant être connecté. C'est essentiel pour attirer les nouveaux utilisateurs. Car c'est avant tout le contenu qui permettra à un utilisateur de vouloir interagir avec celui-ci, et pour interagir il devras s'inscrire. Sans cette approche, il n'y a que peu de chance que l'utilisateurs passe le processus d'inscription.

On pourrait même imaginer plus tard permettre de s'inscrire avec un compte google, discord ou autre provider SSO. Mais on verra certainement ça plus-tard.

Le développeur full-stack aura besoin de la requête d'insertion en base d'un utilisateur.

Une fois inscrit, un utilisateurs sera amené a faire sa première publication. J'imagine une sorte de guide d'utilisation du réseau social.

Ça lui apprendra a créer du contenu, y mettre des pièces jointes comme des photos, des documents ou des liens.

Il devra pouvoir passer cette étape s'il préfère ne pas être contraint de faire sa publication pour accéder a son fil d'actualités.

Sur ce fil il sera amené a voir le contenu le plus populaire sur la plateforme, ou plutôt passer sur un autre fil des posts les plus récents.

Mais dans les 2 cas, l'utilisateurs connecté pourra interagir avec les autres utilisateurs en likant et en commentant les publications qu'il parcourt. Mais s'il apprécie vraiment une publication ou qu'il remarque a plusieurs reprise du contenu interessant provenant d'un même utilisateur, il pourra "suivre" cet utilisateur pour être notifié en temps réel des posts de celui-ci. A chacunes de ces intéractions, la personne visé recevra une notification pour lui préciser la nature du geste. (Like, follow, etc...). Mais s'il le souhaite il devras être capable de désactiver ces notifications qui pourrait être trop nombreuses.

A cette étape il faudra une requête pour créer un nouveau post avec sa pièce jointe. Ainsi qu'une requête pour récupérer les posts pour chacun des fils d'actualités avec leurs nombre de "like" et de partages. Bien sûr les fils d'actualités devronts être paginés.

Il faudra aussi une requête pour afficher les paramètres utilisateur ainsi que pour les modifier.

Ah j'oubliait un point important ! Un utilisateurs qui visionne un post pourra y placer quelques commentaires, et biensûr un utilisateur doit pouvoir répondre a un commentaire. La réponse s'affichera alors comme imbriqué a ce commentaire précédent pour visualiser aisément les réponses.

J'aimerai donc une requête pour afficher les commentaires d'un post ainsi que le nombre de "like" sur celui-ci ainsi qu'une requête pour récupérer toutes les réponses d'un commentaire.

En plus de ces fonctionnalités de base, j'aimerais également implémenter des fonctionnalités avancées, telles qu'un système de recherche par mots clés pour les utilisateurs et les publications, mais aussi avec la possibilité de filtrer les publications par date, auteur, etc.

J'aimerais que les utilisateurs puissent créer des groupes de partage, avec un système de rôles. Ce que je veux dire par là c'est simplement que les utilisateurs pourraient gérer à plusieurs une page commune, mais permettre a des inconnu de contribuer aux contenus de cette page. Le créateur sera un Super Utilisateur sur ce groupe, et pourra y changer quelques paramètres qui ne sont pas vraiment encore défini mais on peux imaginer la possibilité de changer le nom du groupe et/ou sa description, a changer sa visibilité (publique ou privée), mais aussi à inviter d'autres utilisateurs et a leurs assigner un rôle (Administrateur, Modérateur, Éditeur, ou Visiteur).

Si vous avez le temps, il serait intéressant de pouvoir récupérer quelques "Analytics" sur l'utilisation du réseau social. J'ai en tête :

La durée moyenne des sessions utilisateurs.
Le nombre moyens de posts publié par utilisateurs.
Le nombre moyens de post visionné par un utilisateurs par session.
Le temps moyen passé a l'écriture d'un post.
Le nombre moyens de modification d'un post déjà publié.
Le temps moyens passé sur un fil, regroupé par type de fils d'actualités.

Il me faudra pouvoir visualiser des logs des différentes modifications effectués (Nom de compte, texte d'un post, etc...)

J'ai entendu parlé de "Triggers" qui serait utile pour ce cas d'usage, mais je ne m'y connais pas vraiment.

Sur ces analytics, j'aimerais que vous me fournissiez les requêtes permettant d'en afficher les données.

Je suis impatient de voir ce que vous pouvez réaliser et je suis convaincu que ce projet sera un succès.

PS: Si vous avez besoin de plus d'informations sur le projet, je reste disponible par mail a : [jean-marc.l@nocturlab.fr](mailto:jean-marc.l@nocturlab.fr)

Merci de votre attention.

Jean-Marc L.”

### Besoins du client :

- Possibilité de créer un compte ✅
- L’utilisateur doit être connecté pour interagir avec l’application MAIS un utilisateur non connecté peut également y accéder et visualiser les posts sans pouvoir interagir (géré en front avec un access token et les autorisations) ✅
- L’utilisateur connecté peut poster, liker, commenter et partager des posts ✅
- 2 fils d’actu avec 2 tris des posts : un sur la popularité, l’autre sur les dates : du plus récent au plus vieux post ✅
- Seulement une 20 aine de posts doivent s’afficher par page de fil d’actus ✅
- Possibilité de suivre un utilisateur ✅
- L’utilisateur doit recevoir des notifications ✅
- Possibilité de désactiver les notifications ✅
- Les posts peuvent comporter des pièces jointes comme des photos, des liens ou des documents ✅
- Un utilisateur doit pouvoir répondre aux commentaires laissés par d’autres utilisateurs ✅
- Système de recherche par mots-clés pour les utilisateurs et les publications ✅
- Possibilité de filtrer les publications par date, auteur etc…✅
- L’utilisateur doit recevoir un guide d’utilisation à la 1ère connexion et doit pouvoir passer ce tuto ✅
- Créer des groupes avec un système de rôles ✅

### Questions à poser au client :

- Quelles données souhaitez-vous demander à l’utilisateur lors de la création de compte ?
    - Réponse : au moins **email + date de naissance + pseudo**
- Quel contenu souhaitez-vous qu’il y ait dans les posts des utilisateurs en plus des pièces jointes ? Les pièces-jointes sont elles obligatoires ?
    - Réponse : un **texte**, mais il pourra y avoir **une ou plusieurs** **pièces jointes**, à savoir, des images, vidéo, des URL (qui afficheront des informations sur le site distant), une localisation GPS, des pdf.
    
    Les pièces jointes sont **facultatives**.
    
- Les commentaires sont il exclusivement du texte ?
    - Réponse : **même contenu que les posts**
- Sur les fils d’actualité vous parlez de pagination, combien de posts voulez-vous qu’ils affichent ?
    - une **20aine**
- Quels types de filtres ?

### Réflexion sur les différentes requêtes :

- Une pour insérer un utilisateur en base de données ✅
- Une pour lire les données perso de l’utilisateur (à partir d’un nom d’utilisateur) ✅
- Requête pour créer un nouveau post avec sa pièce-jointe ✅
- Requête pour créer un nouveau post sans pièce-jointe ✅
- Requête pour récupérer les posts de chacun des fils d’actualité avec leur nombre de likes et de partages (commentaires ?) + pagination ✅
- Requête pour afficher les paramètres utilisateurs ✅
- Requête pour modifier les paramètres utilisateurs ✅
- Requête pour afficher les commentaires d’un post ainsi que ses likes ✅
- Requêtes pour afficher les réponses aux commentaires ✅

### Options :

- S’inscrire avec un compte google, discord …
- Analytics

# 2. Construire le MCD, MLD, MPD
![MPD](https://github.com/CharlotteCharrier/brief4/blob/main/MPD.JPG)

# 3. Créer ma base de données

# 4. Mes ressources

Pour spécifier les attentes : 

-Jean-Marc le client 

Pour SQL : 

-[PostgreSQL Tutorial](https://www.postgresqltutorial.com/) 

-[Cours SQL](https://sql.sh/cours/)

Pour générer mon jeu de données :

-[Commander des noms aléatoires gratuits - Fake Name Generator](https://fr.fakenamegenerator.com/order.php)

-[Lorem Ipsum Generator](https://loremipsum.io/generator/) 

Pour les doutes et les questions de conception de bdd :

-Mes compagnons du fond de la classe : Omar, Morgan et Olivier

-[Lucidchart](https://www.lucidchart.com/pages/fr)

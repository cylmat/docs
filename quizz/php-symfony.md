Php /Symfony
============

Questions
---------

1. Quelle est la différence entre un service et un contrôleur dans Symfony ?
2. Qu’est-ce que l’injection de dépendance et comment Symfony la met-il en œuvre ?
3. À quoi sert le fichier services.yaml dans un projet Symfony ?
4. Expliquez la différence entre les annotations @Route et la configuration de routes via YAML ou PHP.
5. Que fait la commande php bin/console cache:clear ?
6. Quelle est la différence entre paramConverter et un service qui charge manuellement une entité ?
7. Qu’est-ce que Doctrine dans Symfony et à quoi sert l’EntityManager ?
8. Différence entre persist() et flush() dans Doctrine ?
9. Quelle est la différence entre une entité Symfony et un DTO (Data Transfer Object) ?
10. Qu’est-ce qu’un EventSubscriber dans Symfony ? Donnez un cas d’usage.
11. À quoi sert le fichier security.yaml ?
12. Quelle est la différence entre un firewall et un access control dans Symfony ?
13. Comment fonctionne le système d’authentification via JWT dans un projet Symfony ?
14. À quoi sert le composant Validator dans Symfony ?
15. Comment définir un middleware (EventListener) global dans Symfony ?
16. Quelle est la différence entre un contrôleur API (JsonResponse) et un contrôleur classique (Response) ?
17. Comment gérer les erreurs 404 ou 403 dans Symfony proprement ?
18. Quelles sont les bonnes pratiques pour paginer des résultats dans une API Symfony ?
19. Expliquez comment utiliser les environnements (.env, .env.local) dans Symfony.
20. Quelle est la commande pour créer une migration et appliquer les changements de schéma en base ?
21. Quelle est la différence entre le hashage et le cryptage ?
22. Que fait une requête HTTP de type PUT par rapport à POST ?
23. Quelle est la différence entre une API REST et une API GraphQL ?
24. Expliquez le principe de fonctionnement d'un token JWT.
25. Quelle est la différence entre une base de données relationnelle et NoSQL ?
26. Que signifie l’acronyme ACID en base de données ?
27. À quoi sert un ORM (comme Sequelize ou TypeORM) ?
28. Qu’est-ce qu’un Command Handler dans une architecture CQRS Symfony ?
29. Quelle est la différence entre un Service Container et un Service Locator en PHP ?
30. Qu’est-ce qu’un Trait en PHP et quand faut-il éviter de l’utiliser dans Symfony ?
31. Quelle est la différence entre un bundle et un package Composer dans Symfony ?
32. Comment fonctionne le Kernel de Symfony et quel est son rôle principal ?
33. Qu’est-ce qu’un Controller Resolver et comment Symfony l’utilise-t-il pour exécuter les contrôleurs ?
34. Décrivez le cycle de vie d’une requête HTTP dans Symfony (Request → Response).
35. Quelle est la différence entre un service public et un service privé dans le conteneur de services Symfony ?
36. Comment peut-on surcharger la configuration d’un bundle tiers dans Symfony ?
37. Quelle est la différence entre les fichiers .env, .env.local, .env.test et .env.prod ?
38. À quoi sert le fichier bootstrap.php dans le dossier config/ d’un projet Symfony ?
39. Comment configurer plusieurs Entity Managers ou connexions Doctrine dans Symfony ?
40. Comment définir un paramètre global dans Symfony et l’injecter dans un service ou un contrôleur ?
41. Comment mettre en place une relation ManyToMany et la gérer dans un formulaire Symfony ?
42. Quelle est la différence entre les stratégies de chargement EAGER et LAZY dans Doctrine ?
43. Quelles sont les bonnes pratiques pour optimiser les performances des requêtes Doctrine ?
44. Qu’est-ce qu’un Lifecycle Callback dans Doctrine et donnez un exemple d’utilisation ?
45. Comment effectuer une requête personnalisée (DQL ou QueryBuilder) dans un repository Doctrine ?
46. Quelle est la différence entre un voter et un access control dans Symfony ?
47. Comment créer un authentificateur personnalisé (Custom Authenticator) dans Symfony 6/7 ?
48. Quelle est la différence entre un UserProvider et un Authenticator dans le système de sécurité ?
49. Comment fonctionne la protection CSRF dans les formulaires Symfony ?
50. Comment gérer la régénération du token de session après une authentification réussie (pour éviter le session fixation) ?


Réponses
--------

Symfony – Bases

1. Différence entre service et contrôleur :
→ Un contrôleur gère les requêtes HTTP ; un service contient la logique réutilisable injectée dans les contrôleurs.

2. Injection de dépendance :
→ C’est le fait de fournir les dépendances d’une classe via le conteneur de services de Symfony.

3. services.yaml :
→ Définit les services et leur configuration (autowiring, visibilité, arguments…).

4. @Route vs YAML/PHP :
→ @Route est défini dans le code via annotations/attributs, YAML/PHP via fichiers de config. Même effet, syntaxe différente.

5. cache:clear :
→ Vide et reconstruit le cache de Symfony (config, routes, conteneur…).

6. paramConverter vs service manuel :
→ ParamConverter charge automatiquement les entités à partir des paramètres de route, un service le ferait manuellement.

7. Doctrine / EntityManager :
→ Doctrine est l’ORM de Symfony ; EntityManager gère les entités (persist, flush, remove…).

8. persist() vs flush() :
→ persist() prépare l’objet à être enregistré, flush() exécute les requêtes SQL.

9. Entité vs DTO :
→ L’entité représente une table BD ; le DTO sert à transférer des données sans logique métier.

10. EventSubscriber :
→ Écoute des événements du kernel ou Doctrine pour exécuter du code automatiquement (ex : logger, audit).

🔐 Sécurité & API

11. security.yaml :
→ Configure l’authentification, les rôles, les firewalls et les règles d’accès.

12. Firewall vs Access Control :
→ Le firewall gère la sécurité de la requête (authentification) ; l’access control gère les autorisations.

13. Auth JWT :
→ Authentifie via un token signé transmis dans les headers sans session.

14. Validator :
→ Valide les données d’entités ou formulaires selon des contraintes (ex : NotBlank, Email).

15. Middleware global (EventListener) :
→ Listener sur kernel.request ou kernel.response pour intercepter toutes les requêtes/réponses.

16. JsonResponse vs Response :
→ JsonResponse renvoie du JSON (API), Response renvoie du HTML ou texte classique.

17. Erreurs 404/403 :
→ Gérer via ErrorController, templates error404.html.twig, ou événements ExceptionListener.

18. Pagination API :
→ Utiliser PaginatorInterface, Pagerfanta ou KnpPaginatorBundle, éviter de charger tout en mémoire.

19. Environnements (.env) :
→ .env global, .env.local pour machine locale, .env.prod pour la prod.

20. Migration :
→ php bin/console make:migration puis php bin/console doctrine:migrations:migrate.

🧠 PHP / Concepts généraux

21. Hashage vs cryptage :
→ Hashage = irréversible (password_hash()), cryptage = réversible (clé).
utoload et l’environne
22. PUT vs POST :
→ PUT remplace une ressource, POST crée une nouvelle ressource.

23. REST vs GraphQL :
→ REST = endpoints multiples ; GraphQL = une seule requête flexible avec schéma.

24. Token JWT :
→ JSON Web Token signé contenant les infos utilisateur (header + payload + signature).

25. BDD relationnelle vs NoSQL :
→ Relationnelle = tables et relations fixes ; NoSQL = documents ou clés/valeurs, plus flexible.

26. ACID :
→ Atomicité, Cohérence, Isolation, Durabilité : garanties des transactions.

27. ORM / Doctrine :
→ ORM = mapping objets ↔ tables ; Doctrine gère cela automatiquement.

28. Command Handler (CQRS) :
→ Sépare les commandes (actions) de la logique de lecture (requêtes).

29. Service Container vs Service Locator :
→ Container = injection automatique ; Locator = récupération manuelle d’un service.

30. Trait PHP :
→ Bloc de code réutilisable ; à éviter pour la logique métier complexe (favoriser services).

🧩 Symfony – Avancé

31. Bundle vs Package :
→ Bundle = module intégré à Symfony ; Package = dépendance PHP installée via Composer.

32. Kernel :
→ Point d’entrée de l’application ; initialise les bundles, services et traite les requêtes.

33. Controller Resolver :
→ Trouve et exécute le bon contrôleur pour une requête donnée.

34. Cycle de vie requête :
→ HTTP Request → Router → Controller → Response → HTTP Response.

35. Service public vs privé :
→ Public = accessible partout ; Privé = uniquement injecté via autowiring.

36. Surcharger config bundle :
→ Placer la config personnalisée dans config/packages/nom_du_bundle.yaml.

37. .env / .env.local / .env.test / .env.prod :
→ Environnements distincts selon contexte (dev, test, prod).

38. bootstrap.php :
→ Initialise l’autoload et prépare l’environnement avant le Kernel.

39. Multi-EntityManager :
→ Déclarer plusieurs connexions Doctrine dans doctrine.yaml.

40. Paramètre global :
→ Déclaré dans services.yaml sous parameters: et injecté via le conteneur.

🗄️ Doctrine & Sécurité avancée

41. Relation ManyToMany :
→ Définie via annotations @ManyToMany ; souvent gérée par une table de jointure.

42. EAGER vs LAZY :
→ EAGER = charge tout de suite ; LAZY = charge à la demande.

43. Optimisation Doctrine :
→ Utiliser join fetch, indexation, cache, pagination, éviter les N+1.

44. Lifecycle Callback :
→ Méthodes exécutées automatiquement à certains moments (ex : @PrePersist).

45. Requête DQL / QueryBuilder :
→ Permet des requêtes personnalisées en orienté objet (createQueryBuilder()).

46. Voter vs Access Control :
→ Voter = logique fine d’autorisation ; Access Control = règle globale dans security.yaml.

47. Custom Authenticator :
→ Classe qui gère manuellement la logique d’authentification (ex : JWT, API Key).

48. UserProvider vs Authenticator :
→ UserProvider charge l’utilisateur ; Authenticator gère le processus de login.

49. Protection CSRF :
→ Token unique ajouté aux formulaires pour éviter les attaques intersites.

50. Session fixation :
→ Régénérer l’ID de session après login avec migrate() pour éviter le vol de session.

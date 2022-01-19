# NoSql

NoSql: Tolérence aux pannes, distribution des données  
    Une base NoSQL est une base de données qui permet le passage à l'échelle via la réplication  
    et la distribution des données (et de fait, des requêtes). Par contre, la réplication empêche  
    la gestion concurrentielle de transactions et la distribution de calcul lourd est propre à Map/Reduce et  
    non les langages de plus haut niveau utilisés dans les solutions NoSQL.  

## SQL - ACID
Atomicité : Une transaction s’effectue entièrement ou pas du tout  
Cohérence : Le contenu d’une base doit être cohérent au début et à la fin d’une transaction  
Isolation : Les modifications d’une transaction ne sont visibles/modifiables que quand celle-ci a été validée  
Durabilité : Une fois la transaction validée, l’état de la base est permanent (non affecté par les pannes ou autre)  

## NOSQL - BaSE
Basically Available : quelle que soit la charge de la base de données (données/requêtes),  
            le système garantie un taux de disponibilité de la donnée  
Soft-state : La base peut changer lors des mises à jour ou lors d'ajout/suppression de serveurs.  
            La base NoSQL n'a pas à être cohérente à tout instant  
Eventually consistent : À terme, la base atteindra un état cohérent  

## Theoreme de CAP (2 max)
Consistency (Cohérence) : Une donnée n'a qu'un seul état visible quel que soit le nombre de réplicas  
Availability (Disponibilité) : Tant que le système tourne (distribué ou non), la donnée doit être disponible  
Partition Tolerance (Distribution) : Quel que soit le nombre de serveurs, toute requête doit fournir un résultat correct  
CA: (MySQL) - AP*: (Elastic Neo4j, MemCached, Redis) - CP: (MongoDB)  

## Arbre: BTree
Structure de données en arbre équilibré.  
Le principe est de permettre aux nœuds parents de posséder plus de deux nœuds enfants :  
c'est une généralisation de l’arbre binaire de recherche.  
Ce principe minimise la taille de l'arbre et réduit le nombre d'opérations d'équilibrage.  
De plus un B-arbre grandit à partir de la racine, contrairement à un arbre binaire de recherche qui croît à partir des feuilles.  

MapReduce est un patron d'architecture de développement informatique, inventé par Google,  
dans lequel sont effectués des calculs parallèles, et souvent distribués, de données potentiellement très volumineuses  

------
## Infos
Distribution:  le but de la distribution est de soulager le serveur central en répartissant les données sur plusieurs serveurs.
Elasticite: capacité du système à s’adapter automatiquement en fonction du nombre de serveurs qu’il dispose et de la quantité de données
Sharding: Le sharding est une technique permettant de distribuer des chunks (morceaux de fichiers) sur un ensemble de serveurs,
            avec la capacité de gérer l’élasticité (serveurs/données) et la tolérance aux pannes
            Trois familles de distribution pour le NoSQL existent : HDFS (basé sur la distribution),
            le clustered index (basé sur le BTree) et le consistent hashing (basé sur les tables de hachage).

## Hdfs
HDFS (Hadoop Distributed File System) est une technique de distribution de fichiers volumineux.  
    Chaque fichier sera découpé en "chunk" de 64Mo pour être distribué sur le réseau.  
    - L’avantage de cette solution est une forte puissance de calcul et une bonne tolérance aux pannes.  
    On retrouve de nombreuses solutions NoSQL reposant sur cette architecture, notamment celles orientées colonnes :  
    HBase, PigLatin, Spark.

## CI
CI: La seconde famille de distribution de données repose sur le traditionnel  
    BTree non-dense (ou clustered index) : il s'agit de l'arbre dont les données sont triées.  
   
    1. rassembler les données ayant des valeurs similaires (tri), et de fait toute opération sur ces données rassemblée (regroupement/reduce)
    2. faciliter la gestion de la cohérence des données en verrouillant au niveau du nœud l’information
        et de synchroniser lui-même ses données avec ses replicas.

## DHT
DHT (table de hashage distribuee) Avec da dernière famille, basée sur les tables de hachage,  
    on distribue l’intégralité des informations dont on dispose : à la fois la donnée et la table de hachage.  
    C’est ce que l’on appelle le Consistent Hashing  

    - Une architecture totalement distribuée capable de s’auto-gérer
    - Une élasticité simplifiée, même s’il est difficile d’identifier les zones en surcharge (pas de structure de contrôle).

## Model
Modélisation: (Dénormalisation du schéma Sql to Json)  
    - Fréquence d'interrogation des jointures (relation 1-1 habitation, 1-n expertise, etc...)  
    - Données indépendentes entre elles, pas d'impacte sur les autres  
    - Relation 0-n des deux cotés : imbrication par référence (_id)  
    - Même taux de mise à jour  
    ex: "habite": {"adresse":"rue des pivoines"},   //1-1  1-n
        "expert": ["sgbd, "nosql", "xml"],          //0-n  0-1
        "emploi": [{"id_et": "100", "qualite":"vacataire"}, {"id_et": "105", "qualite":"expert"}]            //0-n  0-n

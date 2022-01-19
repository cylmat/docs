# Testing process

FIRST
---
* [F]ast, rapides, quelques milli-secondes maximum
* [I]solated, isolés, aucun test ne dépend d’un autre, pour qu’une collection de tests puisse être jouée dans n’importe quel ordre
* [R]epeatable, répétables, joués N fois, produisent toujours le même résultat
* [S]elf-validating, auto-validés, chaque test doit être capable de déterminer si son résultat est celui attendu ou non.
  - Il doit déterminer s’il a réussi ou échoué. Il ne doit pas y avoir d’interprétation manuelle des résultats
* [T]imely, opportuns, ils doivent être écrits à peu près en même temps que le code qu’ils testent. Le TDD les écrit même avant

Test Doubles.
---
* Il en existe cinq types :

    dummy : objet demandé par l’API mais qui n’est pas utilisé. On pourrait d’ailleurs jeter une exception si l’une de ses méthodes était appelée

* pour s’assurer que le dummy ne doive jamais être utilisé !

    stub : on implémente une classe qui va répondre exactement ce qu’on attend d’elle
    fake : il s’agit d’une sorte de mini-implémentation de la vraie classe. On peut utiliser les fakes pour simuler une base de données par exemple
    mock : objet pré-câblé qui permet de donner une réponse quand on le sollicite de façon pré-définie
    spy : objet qui permet de vérifier la sortie indirecte d’un code testé, via des assertions définies avant que le code testé ne soit exécuté.

* Il permet notamment d’enregistrer des informations sur l’objet indirect créé, tel que le nombre de fois qu’une méthode est appelée

* Lesquels utiliser et quand ? (black box testing)

    Dans les tests d’exactitude et tests de contrat, les Test Doubles les plus rencontrés et recommandés sont les dummies, stubs et fakes.
    Dans les tests de collaboration, les Test Doubles à utiliser sont les mocks et spies.
    Pour un type de test donné, il doit être rare voire déconseillé d’utiliser d’autres Test Doubles autres que ceux préconisés,

* cela sera dans la majorité des cas une mauvaise pratique.
Exemple : des mocks dans un test d’exactitude ? A éviter !

    Erreurs:
    Une classe de production => une classe de tests. Le second défaut est d’utiliser des mocks à outrance.
    Pour (presque) chaque méthode => une méthode de test
    Ce choix a de nombreuses conséquences : tout changement d’implémentation sera coûteux car il faudra réécrire les tests, les adapter

---
@ref
    https://www.guru99.com/smoke-sanity-testing.html

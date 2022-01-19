# Application architecture

Architecture
---
    DAO - Data Accesss Object: regrouper les accès aux données persistantes dans des classes à part, plutôt que dans les classes "métier"
    DTO - Data Transfert Object: Se distingue du DAO car il ne permet que de modifier ou d'accéder à ses données (mutateurs, accesseurs)
    Inversion of Control (IoC): Typically a Framework, an external source take control of the flow.
    MVP Modèle-Vue-Presentation
    POC - Programmation orienté composant: utiliser une approche modulaire de l'architecture, meilleure lisibilité et maintenance.
    Value_object: Represents a simple immutable entity not based on identity: two value objects are equal when they have the same value
        Value objects are among the building blocks of DDD. 


    ADR: refinement of MVC. Action (takes HTTP requests) –Domain (modify state, storage, data)– Responder (builds the HTTP response).
    Active record
    Broker
    Client–server
    CBD
    DAO
    DTO
    DDD
    ECB
    ECS
    EDA
    Front controller
    Identity map
    Interceptor
    Implicit invocation
    Inversion of control
    Model 2
    MOM
    Microservices
    MVA
    MVC
    MVP
    MVVM
    Monolithic
    Multitier
    Naked objects
    ORB
    P2P
    Publish–subscribe
    PAC
    REST
    SOA
    Service locator
    Specification

@ref: https://en.wikipedia.org/wiki/Architectural_pattern

---
**Refs**  
- https://fr.wikipedia.org/wiki/Patron_de_conception
- https://en.wikipedia.org/wiki/Anti-pattern
- https://springframework.guru/gang-of-four-design-patterns/
- https://online.visual-paradigm.com/diagrams/templates/class-diagram/gof-design-patterns-factory-method/


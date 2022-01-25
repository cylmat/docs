# Clean architecture

Layered Architecture
---
Hexagonal "Ports & Adapters" Architecture which only implicitly mentions two concentric layers:
+ An internal layer representing the business logic.
+ An external layer representing the delivery mechanisms and infrastructure.

* Domain in the centre of the application.
* Externalising the delivery mechanisms (UI) and infrastructure (ORM, Search engines, 3rd party APIs)

Layered pattern architecture
---
+ (Presentation layer)
+ Application logic - (Userside, facade, command)
+ Domain layer (Business logic)
+ Infrastructure (Database, adapters, api, persistence)

Clean
---
Each of these architectures produce systems that are:
+ Independent of Frameworks.
+ Testable. The business rules can be tested without external element
+ Independent of UI. 
+ Independent of Database. 

Onion Architecture (build on Port & Adapter):
+ The application is built around an independent object model
+ Inner layers define interfaces. Outer layers implement interfaces
+ Direction of coupling is toward the center
+ All application core code can be compiled and run separate from infrastructure

---
@ref:  
- https://herbertograca.com/2017/11/16/explicit-architecture-01-ddd-hexagonal-onion-clean-cqrs-how-i-put-it-all-together/
- https://herbertograca.com/2017/09/21/onion-architecture/
- https://blog.octo.com/application-domain-infrastructure-des-mots-de-la-layered-hexagonal-clean-architecture/
- https://alistair.cockburn.us/hexagonal-architecture/
- https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html

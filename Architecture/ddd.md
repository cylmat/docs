DDD
===

Approach
--------
1. Focus on core domain
2. Create domain between business and software
3. Speak a common language within a bounded context

Design
------
### Model relevant
- Bounded context -> common language -> Continuous intégration -> Model Driven
  * Model relevant and speak to every parts 
  * Continuous Integration keep model concepts consistent within these bounds

### Blocks of Model Design
- Layered architecture
  * Isolate domain model and business logic
  * Eliminate any user interface and infrastructure dependency
- Modules: Divide application in a cohesive low-coupling langage concept (and not as technical split)

+ Domain events: Informations about application activities as a serie of individual events
+ Services: A responsability that can't be modeled as an object

- Aggregate: Cluster of objects with defined boundaries around each
- Entities (Reference-object): Distinguished by its identity rather than its attributes
- Value-object: Defined by its attributes, have no individual identity  

Reference
---------
- Bounded context: Description of a boundary where a particular model is applicable
- Ubiquitous language: language structured on the domain model within a bounded context  

---
**@ref**  
- https://www.domainlanguage.com
- https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf

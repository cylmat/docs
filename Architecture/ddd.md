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

### Blocks of Model
- Layered architecture
  * Isolate domain model and business logic
  * Eliminate any user interface and infrastructure dependency
- Modules: Divide application in a cohesive low-coupling langage concept (and not as technical split)

+ Domain events: Informations about application activities as a serie of individual events
  - Implement explicitly internal side effects of changes 
  - != Integration events (boundary's external event, additional systems, async)
+ Factories: Provide encapsulation to create complex aggregates or objects
+ Services: A responsability that can't be modeled as an object
+ Repository: Provide methods that select objects/aggregates based on criteria meaningful to domain

- Aggregate: Cluster of objects with defined boundaries around each
- Entities (Reference-object): Distinguished by its identity rather than its attributes
- Value-object: Defined by its attributes, have no individual identity 

### Flexible design
**A pleasant and powerful design must be clear, deep modeled, coherent and open to low-coupled easy changes.**  

Declarative-style design (conceptual contours):  
- Speakful classes and interfaces (intention-revealing)
- Tests-first to think client-way
- Side-effect free (segregated commands that do not return domain informations)
- Place code-assertions (post‐conditions and invariants)
- Low-coupling standalone classes
- Closure operations whose return type is same as arguments

### Strategic design
Separate core/kernel/host and layer/system/stream

Reference
---------
- Bounded context: Description of a boundary where a particular model is applicable
- Ubiquitous language: language structured on the domain model within a bounded context  

---
**@ref**  
- https://www.domainlanguage.com
- https://www.domainlanguage.com/wp-content/uploads/2016/05/DDD_Reference_2015-03.pdf

+ _Blue-book_ Domain-Driven Design: Tackling Complexity in the Heart of Software
+ _Yellow Book_ Domain-Driven Design Reference: Definitions and Pattern Summaries


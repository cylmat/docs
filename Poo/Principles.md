# Programming principles

* APO: Avoid Premature Optimization
* DRY: Don't repeat yourself
* GRASP: General responsibility assignment software pattern
 + contrôleur, créateur, indirection, spécialiste de l'information, cohésion forte, couplage faible, polymorphisme, variations protégées, invention pure
* KISS: Keep It Simple, Stupid
* LoD: Loi de Demeter (principe de connaissance minimale): Each unit should have only limited knowledge about other units
* SoC: Separation of concerns. Do ONE thing well
* SOLID: Single Responsability, Open (ext)/Closed (mod), Liskov substitution (child), Interface segregation, Dependency inversion (dépend des abstractions)
* STUPID: Singleton, Tight coupling, Untestable, Premature optim, Indecriptive name, Duplicate
* YAGNI: You Aren’t Gonna Need It
* XP: revue de code, tests systématiquement, conception refactoring tout au long du projet, solution la plus simple,
 + compréhension en métaphores, intégration des modifications, cycles de développement rapides  
* CQRS: Command query responsibility separation - Methods should be Command an action, or query returns data, but not both.

**Composition & interface**
1) Composition over Inheritance
 + classes should achieve polymorphic behavior by their composition rather than inheritance from a parent class.
2) Programming to Interface

**Composition vs aggregation**
- Composition: include inside  (delete composition => delete elements)
- Aggregation: include virtual (delete only aggregation, not elements)

---
@Ref
 - https://en.wikipedia.org/wiki/Category:Programming_principles
 - https://www.martinfowler.com/eaaCatalog/index.html

## Twelve factors (SaaS) Api
- I. Codebase: One codebase tracked in revision control, many deploys
- II. Dependencies: Explicitly declare and isolate dependencies
- III. Config: Store config in the environment
- IV. Backing services: Treat backing services as attached resources
- V. Build, release, run: Strictly separate build and run stages
- VI. Processes: Execute the app as one or more stateless processes
- VII. Port binding: Export services via port binding
- VIII. Concurrency: Scale out via the process model
- IX. Disposability: Maximize robustness with fast startup and graceful shutdown
- X. Dev/prod parity: Keep development, staging, and production as similar as possible
- XI. Logs: Treat logs as event streams
- XII. Admin processes: Run admin/management tasks as one-off processes

**@ref**: https://12factor.net

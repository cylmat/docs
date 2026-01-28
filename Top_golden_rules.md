
🏆 Top Golden Rules for Full-Stack Development (Global Subjects)
These are universal principles — not tied to JS, PHP, DBs, or frameworks.  


1️⃣ Separation of Concerns
Keep each layer focused on a single responsibility:

    Frontend → UI, presentation, user interaction
    Backend → business logic, validation, permissions
    Database → persistence, constraints, integrity
    API → communication contract between front/back

Never mix these roles.  


2️⃣ Backend is the Source of Truth
Even if frontend validates:

    Backend must revalidate
    Backend must enforce permissions
    Backend must enforce business rules

Never trust any client input.  


3️⃣ Be Explicit With Data Contracts
APIs must be:

    versioned (v1, v2)
    typed
    predictable
    backward-compatible
    documented (OpenAPI/Swagger)

Break APIs → break clients → break production.  


4️⃣ Design for Failure (Always)
Software always fails somewhere:

    network issues
    timeouts
    partial updates
    retries
    rate limits

Build systems to degrade gracefully, not crash.  


5️⃣ Database Golden Rules

    Normalize for integrity
    Add indexes intentionally
    Use transactions for atomic changes
    Never trust the ORM blindly
    Use constraints (NOT NULL, CHECK, FK) — the DB should enforce correctness
    Back up and test restores regularly



6️⃣ Security First, Not Last  
Minimum essentials:

    Never trust user input
    Sanitize & validate
    Use parameterized queries (prevent SQL injection)
    Store passwords with strong hashing (bcrypt/argon2)
    Use HTTPS everywhere
    Protect secrets (never in repo!)
    Use principle of least privilege

Security is not optional.  


7️⃣ Logging & Observability

    Log in structured format (JSON logs)
    Log at correct levels (info/debug/error/critical)
    Trace requests end-to-end
    Monitor latency, errors, CPU, memory, DB slow queries

You cannot fix what you cannot see.  


8️⃣ Scalable Architecture Principles

    Stateless servers
    Cache aggressively (client, CDN, server, DB)
    Queue long tasks
    Use pagination in APIs
    Offload heavy tasks to workers
    Avoid N+1 queries

Good performance is intentional, not an accident.  


9️⃣ Automate Everything

    automated tests
    automated linting
    automated deployments
    automated migrations
    automated CI/CD

The less manual operations you do, the fewer mistakes.  


🔟 Consistency > Cleverness
Across codebase:

    one naming convention
    one formatting style
    one error format
    one folder structure
    one way to handle auth
    one way to write tests

Consistency reduces cognitive load and bugs.  


1️⃣1️⃣ Error Handling Must Be a First-Class Feature

    every API returns predictable error shapes
    no silent failures
    add global exception handlers
    always include human-readable messages

Make errors understandable, both for devs and users.  


1️⃣2️⃣ Write Code for Humans, Not for Computers
Computers execute it, humans maintain it.
Golden rule:

    “Code is read much more than it is written.”

    Clear > complex
    Simple > clever
    Explicit > magic


1️⃣3️⃣ Test at Every Level
Minimum:

    Unit tests — functions
    Integration tests — DB, services
    E2E tests — API + frontend

Testing is cheaper than debugging.  


1️⃣4️⃣ Document As You Go

    API contracts
    DB schema decisions
    architectural reasoning (“why?”)
    tradeoffs
    how to run project

Good docs save entire teams.  


1️⃣5️⃣ Optimize for Developer Experience

    Clear folder structure
    predictable patterns
    clean architecture
    avoid unnecessary complexity
    focus on readability

Good DX → fewer bugs → faster development.  


1️⃣6️⃣ Think in Terms of Long-Term Maintainability
Your future self (or team) must:

    understand
    extend
    refactor
    debug
    onboard quickly

Write code that will survive time and team changes.

-
1️⃣ Nullable

Treat null as a design decision, not an accident
💡 Rule: Nulls are allowed at the edges (DB, API, input), NOT in the core logic.

Bad: user.address.city
Better: user.address?.city ?? "Unknown"
Best: type User = { address: Address }
if ($user->address === null) { throw new LogicException("User has no address"); }

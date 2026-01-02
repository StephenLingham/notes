# Software Development Principles and Laws

## SOLID Principles

### Single Responsibility Principle (SRP)
- A class should have one reason to change, responsible to one actor

### Open/Closed Principle (OCP)
- Open for extension, closed for modification

### Liskov Substitution Principle (LSP)
- Derived types must be completely substitutable for their base types

### Interface Segregation Principle (ISP)
- Many specific interfaces over one general-purpose interface

### Dependency Inversion Principle (DIP)
- Depend on abstractions, not concretions

## Core Design Principles

### Don't Repeat Yourself (DRY)
- Every piece of knowledge has a single, unambiguous representation

### Keep It Simple, Stupid (KISS)
- Keep systems simple; avoid unnecessary complexity

### You Aren't Gonna Need It (YAGNI)
- Don't implement functionality until it's needed

### Avoid Hasty Abstraction (AHA)
- Prefer duplication over wrong abstraction; wait for patterns to emerge

### Separation of Concerns (SoC)
- Separate programs into distinct sections, each addressing one concern

### Principle of Least Astonishment (POLA)
- Components should behave as users expect

### Law of Demeter (LoD) / Principle of Least Knowledge
- Only talk to immediate friends (self, parameters, created objects, direct components)
- Avoid chaining: `obj.getX().getY().getZ()`

### Composition Over Inheritance
- Favor "has-a" over "is-a" relationships

### Tell, Don't Ask
- Tell objects what to do; don't query state and decide for them

### Hollywood Principle
- "Don't call us, we'll call you" - foundation of IoC and dependency injection

### Encapsulate What Varies
- Isolate volatile code from stable code

### Locality of Behaviour (LoB)
- Behavior should be obvious from looking at code locally, avoid spreading logic across distant locations

## Software Development Laws

### Conway's Law
- System architecture mirrors organizational communication structure

### Brooks's Law
- Adding people to a late project makes it later

### The Law of Leaky Abstractions (Spolsky)
- All non-trivial abstractions leak; you'll eventually need to understand what's beneath

### Hofstadter's Law
- It always takes longer than expected, even accounting for this law

### Parkinson's Law
- Work expands to fill available time

### Murphy's Law
- Anything that can go wrong will go wrong

### Postel's Law (Robustness Principle)
- Be conservative in what you send, liberal in what you accept

### Gall's Law
- Complex systems that work evolved from simple systems that worked

### Hyrum's Law (Law of Implicit Interfaces)
- With sufficient users, all observable API behaviors become depended upon

### Zawinski's Law
- Every program attempts to expand until it can read mail

### Kernighan's Law
- Debugging is twice as hard as writing code; keep it simple to debug it

### Eagleson's Law
- Code you haven't seen in six months was written by someone else

### Ninety-Ninety Rule
- First 90% takes 10% of time; last 10% takes the other 90%

## Architectural Principles

### High Cohesion, Low Coupling
- Group related functionality; minimize module dependencies

### Dependency Rule (Clean Architecture)
- Dependencies point inward; inner layers know nothing about outer layers

### Stable Dependencies Principle (SDP)
- Depend in the direction of stability

### Stable Abstractions Principle (SAP)
- Stable modules are abstract; unstable modules are concrete

### Common Closure Principle (CCP)
- Package classes that change together

### Common Reuse Principle (CRP)
- Package classes that are used together

### Acyclic Dependencies Principle (ADP)
- No cycles in package dependency graph

### Single Level of Abstraction Principle (SLAP)
- Each function operates at one level of abstraction

## Code Quality Principles

### Boy Scout Rule
- Leave code cleaner than you found it

### Broken Windows Theory
- Fix bad code when you see it; don't let technical debt accumulate

### Two-Pizza Team Rule
- Teams fed by two pizzas (6-8 people) optimize communication

### Rubber Duck Debugging
- Explain code to an inanimate object to find bugs

### Zero Bug Tolerance
- Fix bugs immediately; prevent backlog growth

### Fail Fast Principle
- Detect and report errors as early as possible

### Defensive Programming
- Validate inputs, check preconditions, handle errors

## Testing Principles

### Test-Driven Development (TDD)
- Red, Green, Refactor: write tests before code

### Arrange, Act, Assert (AAA)
- Structure tests in three phases: setup, execution, verification

### Test Pyramid
- Many unit tests, fewer integration tests, few end-to-end tests

### FIRST Principles (Unit Tests)
- **Fast** - Tests should run quickly
- **Independent** - Tests shouldn't depend on each other
- **Repeatable** - Same results every time
- **Self-Validating** - Pass/fail without manual inspection
- **Timely** - Written at the right time (before or with production code)

### Given-When-Then (Behavior)
- BDD structure: **Given** context, **When** event, **Then** outcome

### Test One Thing
- Each test verifies a single behavior

## Agile and Process Principles

### Agile Manifesto Values
- Individuals and interactions over processes and tools
- Working software over comprehensive documentation
- Customer collaboration over contract negotiation
- Responding to change over following a plan

### Extreme Programming (XP) Values
- Communication, Simplicity, Feedback, Courage, Respect

### Continuous Integration/Continuous Deployment (CI/CD)
- Integrate frequently, automate testing/deployment, deliver incrementally

### Shift Left
- Move testing, security, and quality checks earlier

### Infrastructure as Code (IaC)
- Manage infrastructure through versioned code

### GitFlow Principle
- Branching strategies: feature, release, and hotfix branches

## Performance and Scalability

### Premature Optimization is the Root of All Evil
- Make it work, make it right, make it fast - in that order

### 80/20 Rule (Pareto Principle)
- 80% of performance issues from 20% of code; focus on bottlenecks

### Amdahl's Law
- Parallel speedup limited by sequential portion

### CAP Theorem
- Choose two of three: Consistency, Availability, Partition tolerance

### Little's Law
- Items in system = arrival rate × time in system

## Security Principles

### Principle of Least Privilege
- Grant minimum permissions necessary

### Defense in Depth
- Multiple layers of security controls

### Security by Design
- Build security in from the start

### Zero Trust Security
- Never trust, always verify

### Principle of Complete Mediation
- Check every access; no bypasses

## Code Organization

### Package by Feature, Not by Layer
- Organize around business features for higher cohesion

### Screaming Architecture
- Architecture screams its business intent; domain concepts obvious from structure

### Convention Over Configuration
- Sensible defaults; override only when necessary

## Data and State Management

### Single Source of Truth
- One authoritative source per data piece; compute derived data

### Command Query Separation (CQS)
- Methods either change state or return data, not both

### Event Sourcing Principle
- Store state changes as events; derive current state by replay

### Database Normalization
- Reduce redundancy; balance normal forms with query performance

## Communication and Documentation

### Principle of Self-Documenting Code
- Readable without extensive comments; meaningful names and clear structure

### README-Driven Development
- Write README before implementation to clarify intent

### API-First Design
- Design API contract before implementation

### Semantic Versioning (SemVer)
- MAJOR.MINOR.PATCH: breaking changes, features, fixes

## Team and Collaboration

### Code Review Best Practices
- Review for correctness, design, readability, learning; constructive feedback

### Pair Programming
- Two developers at one workstation; improves quality and knowledge sharing

### Collective Code Ownership
- Any team member can modify any code; reduces silos

### Knowledge Sharing
- Document decisions, share learnings, mentor; prevent knowledge silos

## Modern Development Principles

### Microservices Principles
- Small services focused on business capabilities; independently deployable

### Twelve-Factor App
- SaaS methodology: codebase, dependencies, config, backing services, build/release/run, processes, port binding, concurrency, disposability, dev/prod parity, logs, admin

### Cloud-Native Principles
- Design for failure; horizontal scaling; ephemeral infrastructure

### API Gateway Pattern
- Single entry point handling routing, composition, protocol translation

### Circuit Breaker Pattern
- Prevent cascading failures; fail fast when dependencies unavailable

## Anti-Patterns

### God Object / God Class
- Object that knows or does too much; violates SRP

### Sinkhole Anti-Pattern
- Layer that passes data through without adding value

### Shotgun Surgery
- Single change requires modifications across many classes

### Spaghetti Code
- Tangled, unstructured control flow; difficult to follow

### Golden Hammer
- Using one familiar solution for all problems

### Cargo Cult Programming
- Using patterns without understanding why

### Magic Numbers / Magic Strings
- Unexplained literals in code; use named constants instead

### Premature Generalization
- Building flexibility before it's needed; increases unnecessary complexity

### Lava Flow
- Dead code that remains because removal is risky

### Big Ball of Mud
- System with no recognizable structure; grows without design

### Analysis Paralysis
- Over-analyzing without making decisions; balance analysis with action

### Not Invented Here (NIH) Syndrome
- Rebuilding solutions that already exist; wastes time and resources

## Refactoring Principles

### Red-Green-Refactor
- TDD cycle: failing test, make it pass, improve code

### Refactor Ruthlessly
- Small, frequent refactorings over large rewrites

### Make the Change Easy, Then Make the Easy Change
- Two-step approach: restructure, then change

### Leave Code Better Than You Found It
- Boy Scout Rule: opportunistic refactoring during regular work

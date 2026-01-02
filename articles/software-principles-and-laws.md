# Software Development Principles and Laws

## SOLID Principles

### Single Responsibility Principle (SRP)
- A class should have one, and only one, reason to change
- Each module should be responsible to one actor

### Open/Closed Principle (OCP)
- Software entities should be open for extension, closed for modification
- Extend behavior without changing existing code

### Liskov Substitution Principle (LSP)
- Objects of a superclass should be replaceable with objects of subclasses without breaking the application
- Derived types must be completely substitutable for their base types

### Interface Segregation Principle (ISP)
- Clients should not be forced to depend on interfaces they don't use
- Many specific interfaces are better than one general-purpose interface

### Dependency Inversion Principle (DIP)
- High-level modules should not depend on low-level modules; both should depend on abstractions
- Abstractions should not depend on details; details should depend on abstractions

## Core Design Principles

### Don't Repeat Yourself (DRY)
- Every piece of knowledge must have a single, unambiguous representation in the system
- Avoid duplication of logic and data

### Keep It Simple, Stupid (KISS)
- Systems work best when kept simple rather than made complicated
- Avoid unnecessary complexity

### You Aren't Gonna Need It (YAGNI)
- Don't implement functionality until it's actually needed
- Avoid speculative generality

### Separation of Concerns (SoC)
- Separate a program into distinct sections addressing separate concerns
- Each concern should be a separate module

### Principle of Least Astonishment (POLA)
- Components should behave in a way that users expect
- Minimize surprise in APIs and interfaces

### Law of Demeter (LoD) / Principle of Least Knowledge
- Only talk to your immediate friends
- A method should only call methods of: itself, its parameters, objects it creates, its direct components
- Don't chain method calls: `obj.getX().getY().getZ()`

### Composition Over Inheritance
- Favor object composition over class inheritance
- "Has-a" relationships are often more flexible than "is-a" relationships

### Tell, Don't Ask
- Tell objects what to do, don't ask them about their state and make decisions for them
- Push behavior down into objects rather than pulling data out

### Hollywood Principle
- "Don't call us, we'll call you"
- High-level components control low-level components via abstractions
- Foundation of IoC and dependency injection

### Encapsulate What Varies
- Identify aspects that vary and separate them from what stays the same
- Isolate volatile code from stable code

## Software Development Laws

### Conway's Law
- Organizations design systems that mirror their communication structure
- System architecture reflects organizational structure

### Brooks's Law
- Adding people to a late software project makes it later
- Communication overhead grows with team size

### The Law of Leaky Abstractions (Spolsky)
- All non-trivial abstractions are leaky to some degree
- You eventually need to understand what's beneath the abstraction

### Hofstadter's Law
- It always takes longer than you expect, even when you take Hofstadter's Law into account
- Projects take longer than estimated, even with padding

### Parkinson's Law
- Work expands to fill the time available for its completion
- Tasks take as long as the deadline allows

### Murphy's Law
- Anything that can go wrong will go wrong
- Plan for failure and edge cases

### Postel's Law (Robustness Principle)
- Be conservative in what you send, liberal in what you accept
- Accept diverse inputs, produce strict outputs

### Gall's Law
- Complex systems that work evolved from simple systems that worked
- Build complexity incrementally, not all at once

### Hyrum's Law (Law of Implicit Interfaces)
- With sufficient users of an API, all observable behaviors become depended upon
- Users will depend on undocumented behavior

### Zawinski's Law
- Every program attempts to expand until it can read mail
- Software tends to become bloated with features

### Kernighan's Law
- Debugging is twice as hard as writing code; if you write maximally clever code, you're not smart enough to debug it
- Keep code simple for maintainability

### Eagleson's Law
- Any code of your own that you haven't looked at for six months might as well have been written by someone else
- Write code for future maintainers

### Ninety-Ninety Rule
- The first 90% of the code takes 10% of the time; the last 10% takes the other 90%
- Finishing is harder than starting

## Architectural Principles

### High Cohesion, Low Coupling
- Related functionality should be grouped together (high cohesion)
- Dependencies between modules should be minimized (low coupling)

### Dependency Rule (Clean Architecture)
- Source code dependencies must point inward toward higher-level policies
- Inner layers know nothing about outer layers

### Stable Dependencies Principle (SDP)
- Depend in the direction of stability
- Modules should depend on more stable modules

### Stable Abstractions Principle (SAP)
- Abstractness should increase with stability
- Stable modules should be abstract; unstable modules should be concrete

### Common Closure Principle (CCP)
- Classes that change together should be packaged together
- Group classes by reason for change

### Common Reuse Principle (CRP)
- Classes that are used together should be packaged together
- Don't force users to depend on things they don't need

### Acyclic Dependencies Principle (ADP)
- The dependency graph of packages must have no cycles
- Avoid circular dependencies

### Single Level of Abstraction Principle (SLAP)
- Each function should operate at a single level of abstraction
- Don't mix high-level and low-level operations

## Code Quality Principles

### Boy Scout Rule
- Leave code cleaner than you found it
- Continuous incremental improvement

### Broken Windows Theory
- Fix bad designs, wrong decisions, and poor code when you see them
- Don't let technical debt accumulate

### Two-Pizza Team Rule
- Teams should be small enough to be fed by two pizzas (typically 6-8 people)
- Optimal team size for communication and productivity

### Rubber Duck Debugging
- Explain your code to an inanimate object to find bugs
- Verbalization reveals flaws in logic

### Zero Bug Tolerance
- Fix bugs immediately rather than accumulating technical debt
- Prevent bug backlog from growing

### Fail Fast Principle
- Detect and report errors as early as possible
- Don't hide failures or continue with invalid state

### Defensive Programming
- Anticipate failures and guard against them
- Validate inputs, check preconditions, handle errors

## Testing Principles

### Test-Driven Development (TDD)
- Write tests before writing production code
- Red, Green, Refactor cycle

### Arrange, Act, Assert (AAA)
- Structure tests in three phases: setup, execution, verification
- Makes tests readable and maintainable

### Test Pyramid
- Many unit tests, fewer integration tests, few end-to-end tests
- Fast, isolated tests form the foundation

### FIRST Principles (Unit Tests)
- **Fast** - Tests should run quickly
- **Independent** - Tests shouldn't depend on each other
- **Repeatable** - Same results every time
- **Self-Validating** - Pass/fail without manual inspection
- **Timely** - Written at the right time (before or with production code)

### Given-When-Then (Behavior)
- **Given** initial context
- **When** event occurs
- **Then** ensure outcomes
- BDD test structure

### Test One Thing
- Each test should verify a single behavior or outcome
- Makes failures easier to diagnose

## Agile and Process Principles

### Agile Manifesto Values
- Individuals and interactions over processes and tools
- Working software over comprehensive documentation
- Customer collaboration over contract negotiation
- Responding to change over following a plan

### Extreme Programming (XP) Values
- Communication, Simplicity, Feedback, Courage, Respect

### Continuous Integration/Continuous Deployment (CI/CD)
- Integrate changes frequently
- Automate testing and deployment
- Deliver small, incremental changes

### Shift Left
- Move testing, security, and quality checks earlier in the development process
- Find and fix issues sooner

### Infrastructure as Code (IaC)
- Manage infrastructure through code and automation
- Version control for infrastructure

### GitFlow Principle
- Use branching strategies for organized development
- Feature branches, release branches, hotfix branches

## Performance and Scalability

### Premature Optimization is the Root of All Evil
- Don't optimize before measuring
- Make it work, make it right, make it fast - in that order

### 80/20 Rule (Pareto Principle)
- 80% of performance issues come from 20% of the code
- Focus optimization efforts on bottlenecks

### Amdahl's Law
- The speedup of parallel processing is limited by the sequential portion
- Maximum speedup = 1 / (sequential fraction)

### CAP Theorem
- In distributed systems, you can only guarantee two of three: Consistency, Availability, Partition tolerance
- Trade-offs in distributed system design

### Little's Law
- Average number of items in a system = average arrival rate × average time in system
- Queuing theory for capacity planning

## Security Principles

### Principle of Least Privilege
- Grant minimum permissions necessary to perform a task
- Limit attack surface and blast radius

### Defense in Depth
- Use multiple layers of security controls
- No single point of failure in security

### Security by Design
- Build security into the system from the start
- Don't bolt it on later

### Zero Trust Security
- Never trust, always verify
- Verify every access request regardless of source

### Principle of Complete Mediation
- Every access to every object must be checked for authority
- No bypasses in security checks

## Code Organization

### Package by Feature, Not by Layer
- Organize code around business features rather than technical layers
- Higher cohesion within feature modules

### Screaming Architecture
- Architecture should scream its intent (e.g., "I'm an order processing system")
- Domain concepts should be obvious from structure

### Convention Over Configuration
- Reduce decisions by using sensible defaults
- Override only when necessary

## Data and State Management

### Single Source of Truth
- Each piece of data should have one authoritative source
- Derived data should be computed, not duplicated

### Command Query Separation (CQS)
- Methods should either change state (command) or return data (query), not both
- Queries shouldn't have side effects

### Event Sourcing Principle
- Store state changes as a sequence of events
- Current state is derived by replaying events

### Database Normalization
- Organize data to reduce redundancy
- Balance between normal forms and query performance

## Communication and Documentation

### Principle of Self-Documenting Code
- Code should be readable without extensive comments
- Use meaningful names and clear structure

### README-Driven Development
- Write README before implementation
- Clarifies intent and API design

### API-First Design
- Design the API contract before implementation
- Ensures usability and consistency

### Semantic Versioning (SemVer)
- MAJOR.MINOR.PATCH versioning scheme
- Communicate breaking changes, features, and fixes

## Team and Collaboration

### Code Review Best Practices
- Review for correctness, design, readability, and learning
- Constructive feedback, not criticism

### Pair Programming
- Two developers work together at one workstation
- Improves code quality and knowledge sharing

### Collective Code Ownership
- Any team member can modify any part of the codebase
- Reduces bottlenecks and silos

### Knowledge Sharing
- Document decisions, share learnings, mentor others
- Prevent single points of knowledge failure

## Modern Development Principles

### Microservices Principles
- Services are small, focused on business capabilities
- Independently deployable and scalable
- Decentralized data management

### Twelve-Factor App
- Methodology for building SaaS applications
- Covers codebase, dependencies, config, backing services, build/release/run, processes, port binding, concurrency, disposability, dev/prod parity, logs, admin processes

### Cloud-Native Principles
- Design for failure and resilience
- Horizontal scaling over vertical
- Ephemeral infrastructure

### API Gateway Pattern
- Single entry point for client requests
- Handles routing, composition, protocol translation

### Circuit Breaker Pattern
- Prevent cascading failures in distributed systems
- Fail fast when dependencies are unavailable

## Refactoring Principles

### Red-Green-Refactor
- Write failing test (red), make it pass (green), improve code (refactor)
- TDD cycle

### Refactor Ruthlessly
- Continuously improve code structure
- Small, frequent refactorings over large rewrites

### Make the Change Easy, Then Make the Easy Change
- Restructure code to make the desired change simple
- Two-step refactoring approach

### Leave Code Better Than You Found It
- Opportunistic refactoring during regular work
- Boy Scout Rule applied continuously

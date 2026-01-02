# Domain-Driven Design Concepts

### Ubiquitous Language
- Shared language between developers and domain experts based on the domain model
- Used consistently in code, conversations, and documentation

### Bounded Context
- Explicit boundary defining where a domain model applies
- Each context has its own Ubiquitous Language
- Enables multiple models to coexist in large systems

### Entities
- Objects defined by unique, consistent identity rather than attributes
- Identity persists through time and state changes
- Examples: User, Order, Account

### Value Objects
- Immutable objects describing characteristics without conceptual identity
- Interchangeable and shareable
- Examples: Money, Date Range, Address, Email

### Aggregates
- Cluster of objects treated as a unit with a root Entity (Aggregate Root)
- Only the root can be referenced externally
- Defines transaction and consistency boundaries

### Invariants
- Business rules that must always be true, enforced by Entities and Aggregates
- Validated during construction and state changes
- Examples: Order total equals sum of line items, Account balance ≥ 0
- Violations throw exceptions or return validation errors

### Repositories
- Encapsulate data access, providing an in-memory collection abstraction
- Created only for Aggregate Roots
- Queries use domain concepts, not database details

### Domain Services
- Stateless operations that don't belong to Entities or Value Objects
- Named after domain activities
- Examples: TransferFundsService, PricingService

### Specifications Pattern
- Encapsulates business rules as reusable, composable predicates
- Combinable using boolean logic (AND, OR, NOT)
- Used for validation, querying, and filtering
- In .NET, often implemented with `ISpecification<T>` interface and expression trees
- Ardalis.Specification (by Steve Smith) provides a popular .NET implementation
- Example: `new CustomersByCountrySpec("USA").And(new ActiveCustomersSpec())`
- Keeps query logic in the domain layer, not in repositories or UI

### Factories
- Encapsulate complex object creation logic
- Implemented as methods on Aggregate Roots or separate objects
- Maintain invariants during construction

### Layered Architecture
- Presentation Layer - User interface, displays information
- Application Layer - Coordinates tasks, delegates to domain objects
- Domain Layer - Contains business logic and domain model
- Infrastructure Layer - Provides technical capabilities (persistence, messaging)

### Anticorruption Layer
- Translation layer protecting your model from external systems
- Prevents external concepts from leaking into your domain
- Essential when integrating with legacy or third-party systems

### Shared Kernel
- Shared model portion between teams/contexts requiring coordinated changes
- Keep as small as possible

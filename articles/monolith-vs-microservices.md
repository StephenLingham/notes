# Monolith Vs Microservices

## Quotes From Industry Leading Experts
Micro doesn't mean small, "micro" is a label, not a description
- "Although “microservice” has become a popular name for this architectural style, its name does lead to an unfortunate focus on the size of service, and arguments about what constitutes “micro”. In our conversations with microservice practitioners, we see a range of sizes of services. The largest sizes reported follow Amazon's notion of the Two Pizza Team (i.e. the whole team can be fed by two pizzas), meaning no more than a dozen people." - **James Lewis and Martin Fowler** [1](https://martinfowler.com/articles/microservices.html)
- "It's worth noting that while "micro" is in the name, the size of a microservice isn't its defining characteristic. Rather, it's about having services with well-defined boundaries that can be developed, deployed, and scaled independently." - **Milan Jovanovic** [1](https://www.milanjovanovic.tech/blog/understanding-microservices-core-concepts-and-benefits)

Start from a monolith and only refactor to microservices if there's a good reason
- "As I hear stories about teams using a microservices architecture, I've noticed a common pattern. Almost all the successful microservice stories have started with a monolith that got too big and was broken up. Almost all the cases where I've heard of a system that was built as a microservice system from scratch, it has ended up in serious trouble." - **Martin Fowler** [1](https://martinfowler.com/bliki/MonolithFirst.html)
- "I'll keep saying this, if people can't build monoliths properly, microservices won't help" - **Simon Brown** [1](https://files.gotocon.com/uploads/slides/conference_12/515/original/gotoberlin2018-modular-monoliths.pdf)

Avoid having too many horizontal layers
- "I called this onion architecture, as it had lots of layers and made me cry when we had to cut
through it." - **Sam Newman, Building Microservices** [1](https://book.northwind.ir/bookfiles/building-microservices/Building.Microservices.pdf)

## Pros of Microservices

### Technology Heterogeneity
- Different tech can be used for each service so the right tool can be used for the specific job

### Robustness
- A fault in one service is isolated so is less likely to bring down the whole system

## Cons of Microservices

## When to Split or Merge Services

# N-Layer Architecture VS Clean Architecture

### N-Layer Architecture

![](/images/n-layer-architecture.png)

![](/images/domain-driven-design-microservice.png)

### Clean Architecture

![](/images/clean-architecture.jpg)

Currently I prefer traditional N-layer / N-tier / layered architecture as outlined in Domain Driven Design by Eric Evans. I prefer this over Clean Architecture as outlined by Robert C. Martin in his book Clean Architecture. I want to openly list my current reasons for this so that I'm in a better position to have my reasoning criticised. If I'm getting something wrong then so I can learn and change my mind, or if I'm getting something right then I can hopefully share that with others.

1. When using N-layer architecture the domain layer references the data access (aka infrastructure) layer but Clean Architecture inverts this dependency so that the domain (aka core) layer doesn't have any references to any other project. The problem with inverting that reference is that classes in the data access layer such as repositories then know about the services in the domain layer which means that encapsulation has been broken and developers are able to inject business logic services into classes in the data access layer.

1. When designing a web service, one of the projects needs to set up the IoC container and register everything from all the other projects so that dependencies can be injected. Usually this is done in the outermost layer because that layer needs to know about the other layers. This works fine in N-layer architecture because this doesn't break the encapsulation of the upper layers knowing about the lower layers. However in Clean Architecture the API layer needs a reference to the infrastructure layer because it can't go via the domain/core layer. The problem with this is that it means developers can return entities from endpoints rather than needing to map them to DTOs. So if there's a change at the infrustructure layer than it could cause a breaking change to the API contract. N-layer architecture avoids this problem by not having the API layer know about the infrastructure layer so it's not possible.

1. One criticism of N-layer architecture is that the domain/core layer knows about the infrastructure layer. I think the reason this isn't a problem is because you can just make the interfaces public and make the implementations internal so encapsulation is preserved. That way it works very similarly to the ports and adapters pattern that Clean Architecture uses. The only difference is the interfaces/ports live in the infrastructure layer rather than the domain layer.

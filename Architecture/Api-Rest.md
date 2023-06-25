# Api

* REST: Representational State Transfer, is a paradigm and architecture designed by Roy Fielding, the co-author of both the HTTP and URI specifications.
  - https://restfulapi.net 

## Protocol
* https://rsocket.io: Protocol for Reactive Streams semantics between client-server
* SOAP Simple Object Access Protocol

## Specifications
- https://jsonapi.org: A specification for building APIs in JSON
- https://json-ld.org: JSON for linking data
- https://raml.org: The simplest way to model APIs
- https://spec.openapis.org/oas/latest.html: OAS

* HAL Hypertext Application Language
  - https://en.wikipedia.org/wiki/Hypertext_Application_Language
  - https://stateless.group/hal_specification.html

## Architecture
Maturity Model:   
* Level 0 - POX (Plain old XML): Using HTTP as a transport system for remote interactions
* Level 1 - Resources: Individuel endpoint for specific identified object
* Level 2 - HTTP Verbs: Strong separation between safe (eg GET) and non-safe operations with using status codes
* Level 3 - HATEOAS: Tell us in response what we can do, and the URI of the resource we need to manipulate

+ HATEOAS: Hypermedia As The Engine of Application State constitue une contrainte de l'architecture d'application REST.
  - A client interacts with a REST API through the responses provided by the server and shouldn't need any more documentation
  - https://fr.wikipedia.org/wiki/HATEOAS

@ref
- https://martinfowler.com/articles/richardsonMaturityModel.html
- https://zestedesavoir.com/tutoriels/299/la-theorie-rest-restful-et-hateoas

# When to make final class?

- Can make a class final, if they implement an interface, and no other public methods are defined 
- Preventing massive inheritance chain of doom
- Encouraging composition and avoid breaks encapsulation

* " Composition, strategies, callbacks, plugins, event listeners, ... can extend without inheritance. "
* when a class or method is closed for inheritance or internal, you are free to change it or remove it.
* Good designers write most of their code in terms of interfaces, not concrete base classes.

->  implementation extends inheritance is coupling classes to each other 

@ref
- https://ocramius.github.io/blog/when-to-declare-classes-final
- https://verraes.net/2014/05/final-classes-in-php/

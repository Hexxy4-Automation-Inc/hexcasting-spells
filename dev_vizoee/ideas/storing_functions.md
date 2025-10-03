# How to store multiple functions
Functions can get quite large and running entire huge hex can become impossible simply due to trying to load it.

Aternative for it is to store all functions in single list and instead use index/string to access them. Problem with that is that they will constantly occupy part of the stack.

## Possible ways to store functions
### Property
More of static way of storing them as writing to property costs and creating properties is even more so.

### Ravenmind
Simple and easily accessible but often ravenmind is used for other things.

### Evocation
Even more expensive than properties, but could be quite attractive when combining with properties.

### Idea Inscription
Too expensive

### Thot Gambit
Store functions in thot instructions and when needed move to next iteration with index of operatino as first argument.

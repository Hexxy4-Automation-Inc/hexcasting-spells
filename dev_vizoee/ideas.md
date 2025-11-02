# Hexic
## Object oriented programming:
### You can create methods for objects
In object map hexicon to function. To run convert string to hexicon and eval it.

## You can create variables
It can be a pointer to lets say ravenmind and when you read it (eval or list get) it retrieves value, and on (lets say list set) it will push value.
Manual deallocation is required. (or is it?)

### Fully modifiable object
Store map containing display iota, color and property. Then each method can recreate object back on stack. This allows also for storing additional data unique to this object.

### Singleton
Can be accomplished by storing its data on ravenmind

### Different implementations of storage/object
All you need is to change class that object uses as parent

### Interfaces
Provide only list of methods (with maybe description, inputs, outputs). will generate class that have methods throwing not implemented errors.


### inheritance
A:
merge maps and use new one in class
makes harder to separate what is from child class and what is from parent class (do you even need to separate it? can always store copy in internal data)

B:
~~store parent class and store somewhere/somehow what pattern triggered function, then trigger it on parent class. Required wrapper and it is overall more complicated~~

C:
At the lowest level object is constructed to contain inner data like name, color etc and normal data. Then each applied class simply adds their metadata and possibly modifies inner data; it does not wrap object. This allows to have multiple inheritance where if it does not find method in class A it will search class B, C etc.
Cons: you cannot easily modify it without reapplying classes. - Solution - store everything in external space (ravenmind/property) and only store id with optional property

## Structure of object
While patchwork can store many different things, it would be nice to store data that is used for creating patchwork itself; usefull for modifying its own data as this requires to rebuild it
downside - it will not update other instances of object, for that external storage is required; ravenmind sounds like perfect solution

### Contained data
- display iota
- color
- property with metadata
- structure version?
- unique id - for accessing its data from ravenmind
- parent classes - can be stored in prop
- class only metadata (no inheritance) - can be stored in prop
- class name - can be stored in prop


## Objects
- Variable manager
- Even Manager
- Ravenmind manager?

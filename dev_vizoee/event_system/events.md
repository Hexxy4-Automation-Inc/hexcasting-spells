# Event based UI system
User writes event [event_name, dict with parameters] to storage. System 


## On Click

### Parameters
- element id
- function name


System base system only reads collected events and runs correct logic based on event type.
Extension of the system are watchers (constantly checks if event happened).

Declaring event listener:
- event_type/event_name
- function

## MVP
Store listeners in property
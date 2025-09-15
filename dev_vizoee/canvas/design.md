# UI handler
Contains storage how exactly ui should look like. Each iteration writes again updated version.

## Storage
Is a list of elements in order which they shoudl be drawn. Each element contains type, position and styles.
[type, position, styles]
## Styles
- color
- background_color
- on_click
- width
- height
- scale
- rotation
### Text
- content
- align
- text_underlined
- test_obfuscated
- text_crossed
- text_italic
- text_bold



# Tool for designing ui
Converts html code to hexpattern file

## Required elements
- Buttons
- Labels
- Divs
- Text inputs
- Checkboxes

## Styles handling
- color
- position
### Optional
- text align
- margin
- padding
- border


## Hex macros
- move div
- change 


## Even based system
Entire ui should be handled by event system. Each element should have build in their own list of possible events and it would be worth to implement inheritance (optional).

### Button
- on click
- on hover

### Text input
- on change



## MVP (Minimum Viable Product)
- Button with onClick event
- Div with adding and moving children
- Label
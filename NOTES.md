How to Build a CLI Gem

1. Plan your gem, imagine your interface
2. Start with the project structure - google
3. Start with the entry point - the file run
4. force that to build the CLI interface
5. stub out the interface
6. start making things real
7. discover objects.
8. program


A command line interface for furniture options, starting a list of rooms from overstock.com

user types furniture-options.
(the executable goes in the bin directory)
user types a room of his choice.

Show a list of furniture items fit for that room.

<!-- <p class="hp-border-box hp-text-box">Patio &amp; Outdoor</p> -->
the user will be presented with this list and prompted to choose a number, 'list', or 'exit'
1. Patio & Outdoor
2. Bedroom
3. Dining Room
4. Kids' Room
5. Office
6. Living Room
7. Kitchen
8. Bathroom

what is a room?
a room has a name
a room has an image

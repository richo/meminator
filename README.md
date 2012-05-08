# Meminator

A quick hack based on https://github.com/drbrain/meme

# API

Is crude but usable. It was written almost entirely for jamming into
 [Agent99](https://github.com/99designs/agent99) and so it does some really
stupid things that it shouldn't. I intend to fix them at some point.

# Examples

```ruby

require 'meminator'
Meminator.username = 'richo' # USERNAME GOES HERE
Meminator.password = 'password' # PASSWORD GOES HERE

memer = Meminator::Meminator.new

puts memer.get_url("I_WOLF", "Patient stubbed his toe", "Had to put him down")

```

It's worth noting that at time of writing, memegenerator.net was offline so I
couldn't even integration test





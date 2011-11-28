## What is it?

It's a n-linked-hash. It's been rattling around in my head for a while - thought I'd write it down here. ^_^

## So, what is it, really?

    require './n_linked_hash'

    hash = NLinkedHash.new

    hash["foo"] = "bar"
    hash.link "foo", "baz"

    p hash["foo"]
    # ["bar", "baz"]

    hash[:foo] = :bar
    hash[:foo] = :baz

    p hash[:foo]
    # [:bar, :baz]

    hash[:bridge] = :foo
    hash[:bridge] = "foo"

    p hash["foo"]
    # ["bar", "baz", :foo, :bar, :baz, :bridge]
require './n_linked_hash'

hash = NLinkedHash.new

hash["foo"] = "bar"
hash["foo"] = "baz"

p hash["foo"]

hash[:foo] = :bar
hash[:foo] = :baz

p hash[:foo]

hash[:bridge] = :foo
hash[:bridge] = "foo"

p hash["foo"]

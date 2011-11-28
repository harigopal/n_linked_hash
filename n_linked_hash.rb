class NLinkedHash
  def initialize
    @store = {}
  end

  def []=(key, value)
    raise "Key and Value must be different." if key == value

    # Initialize, when nil.
    @store[key] ||= []
    @store[value] ||= []

    # Add links
    @store[key]   += (@store[value] + [value] - [key])
    @store[value] += (@store[key]   + [key]   - [value])

    # Only unique values allowed!
    @store[key].uniq!
    @store[value].uniq!
  end

  def [](key)
    @store[key]
  end
end
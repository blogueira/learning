class Library
  def initialize
    @ary = []
  end
  def method_with_block(&block)
    @ary << block
  end
  def method_that_uses_these_blocks
    @ary.map(&:call)
  end
end

lib = Library.new

for n in %w{foo bar quz}
  lib.method_with_block { n }
end

puts lib.method_that_uses_these_blocks

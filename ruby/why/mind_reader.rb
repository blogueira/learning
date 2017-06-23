require_relative 'endertromb'

class MindReader
  def initialize
    endertromb = Endertromb.new
    @minds = endertromb::scan_for_sentience
  end
  def read
    @minds.collect do |mind|
      mind.read
    end
  end
end

p MindReader.new.methods

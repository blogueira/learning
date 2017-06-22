require_relative 'endertromb'
class WishMaker
  def initialize
    @energy = rand ( 6 )
  end
  def grant ( wish )
    if wish.length > 10 or wish.include? ' '
      raise ArgumentError, "Bad wish."
    end
    if @energy.zero?
      raise Exception, "No energy left."
    end
    @energy -= 1
    endertromb = Endertromb.new
    endertromb::make( wish )
  end
end

todays_wishes = WishMaker.new
todays_wishes.grant ( "antlers" )
todays_wishes.grant ( "eggshells" )
todays_wishes.grant ( "Spermwhale" )

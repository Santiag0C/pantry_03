
class Ingredient
  attr_reader :ingredient, :unit, :caloris
  def initialize(ingredient, unit, caloris)
    @ingredient = ingredient
    @unit = unit
    @caloris = caloris
  end
end

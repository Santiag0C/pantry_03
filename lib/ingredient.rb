
class Ingredient
  attr_reader :ingredient, :unit, :calories
  def initialize(ingredient, unit, calories)
    @ingredient = ingredient
    @unit = unit
    @calories = calories
  end
end

require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require 'pry'

class IngredientTest < Minitest::Test
  def test_instance
    ing = Ingredient.new("milk", "l", 50)
    assert_instance_of Ingredient, ing
  end

  def test_name_atributes
    ing = Ingredient.new("milk", "l", 50)
    assert_equal 50, ing.caloris
    assert_equal "l", ing.unit
    assert_equal "milk", ing.ingredient
  end
end

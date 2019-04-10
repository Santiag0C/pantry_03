require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/recipe'
require 'pry'

class RecipeTest < Minitest::Test
  def test_instance
    rec = Recipe.new("pizza")
    assert_instance_of Recipe, rec
  end
  def test_add_ingrediant
    rec = Recipe.new("pizza")
    cheese = Ingredient.new("cheese", "kg", 50)
    peperoni = Ingredient.new("peperoni", "kg", 30)
    rec.add_ingredient(cheese, 2)
    rec.add_ingredient(peperoni, 1)
    exp = {cheese => 2,
           peperoni => 1}
    assert_equal exp, rec.all_ingredient
  end
  def test_quantity_needed
    rec = Recipe.new("pizza")
    cheese = Ingredient.new("cheese", "kg", 50)
    peperoni = Ingredient.new("peperoni", "kg", 30)
    rec.add_ingredient(cheese, 2)
    rec.add_ingredient(peperoni, 1)
    assert_equal 2, rec.quantity_needed("cheese")
    assert_equal 1, rec.quantity_needed("peperoni")
  end
  def test_total_calorisssss
    pizza = Recipe.new("pizza")
    cheese = Ingredient.new("cheese", "kg", 50)
    peperoni = Ingredient.new("peperoni", "kg", 30)
    pizza.add_ingredient(cheese, 2)
    pizza.add_ingredient(peperoni, 1)
    assert_equal 80, pizza.total_caloris
  end
end

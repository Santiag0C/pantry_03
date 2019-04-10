require 'pry'
class Recipe
  attr_reader :type, :all_ingredient

  def initialize(type)
    @type = type
    @all_ingredient = {}
    @all_ingredient_s = {}
    @arr = []
  end

  def add_ingredient(ingredient, num)
    ing = ingredient.ingredient
    @arr << ingredient.caloris
    @all_ingredient_s[ing] = num
    @all_ingredient[ingredient] = num
  end

  def quantity_needed(type)
    @all_ingredient_s.each do |key, val|
      if key == type
        return @all_ingredient_s[key]
      end
    end
  end

  def total_caloris
    @arr.sum
  end
end

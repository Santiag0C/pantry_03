require 'pry'
class Recipe
  attr_reader :type, :all_ingredient

  def initialize(type)
    @type = type
    @all_ingredient =  Hash.new(0)
    @total_calories = 0
  end

  def add_ingredient(ingredient, num)
    @total_calories += ingredient.calories
    @all_ingredient[ingredient.ingredient] = num
  end

  def quantity_needed(type)
    @all_ingredient[type]
  end
end

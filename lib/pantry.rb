require 'pry'
class Pantry
  attr_reader :stock
  def initialize
    @stock = Hash.new(0)
  end
  def stock_check(type)
    @stock[type.ingredient] || 0
    #binding.pry
  end

  def restock(type, num)
    if @stock.key?(type) == false
      @stock[type.ingredient] = num
      binding.pry
    else
      @stock[type.ingredient] += num
    end
  end
  def enough_ingredients_for?(recipe)
    recipe.all_ingredient.each do |k,v|
      #binding.pry
      if @stock[k] < v
        return false
      end
      true
    end
  end
end

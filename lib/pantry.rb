class Pantry
  attr_reader :stock
  def initialize
    @stock = {}
  end
  def stock_check(type)
    @stock.each do |sh, it|
      if type == sh
        return it
      end
    end
    0
  end

  def restock(type, num)
    if @stock.key?(type) == false
      @stock[type] = num
    else
      @stock[type] += num
    end
  end
end

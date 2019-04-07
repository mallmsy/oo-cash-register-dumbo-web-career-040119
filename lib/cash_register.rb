require 'pry'

class CashRegister

attr_accessor :total, :items
attr_reader :discount, :title

  def initialize(discount = 0)
    @total = 0
    @discount = discount.to_f
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @items += [title] * quantity
  end

  def apply_discount
    return "There is no discount to apply." if discount <= 0

    dollar_discount = self.total * discount * 0.01
    @total -= dollar_discount
    "After the discount, the total comes to $#{@total.to_i}."
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= self.total
  end



end

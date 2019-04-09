class CashRegister
  attr_accessor :total, :discount, :last_trans
  attr_reader :items
  def initialize(discount=0)
    @total = 0 
    @discount = discount
    @items = []
  end 
  
  def add_item(title, price, quantity=1)
    self.total += price * quantity
    while quantity > 0 
      @items << title 
      quantity -=0
    end
  end
  
  def apply_discount
    self.total -= self.discount * 10
    if self.discount > 0 
      "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."
    end
  end 

  
end 

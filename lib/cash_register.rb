require "pry"
class CashRegister
     attr_accessor :discount, :total , :items,:last_transaction
    #  :new_total
    def initialize(discount=0)
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item(title,price,quantity=1)
      self.last_transaction = price * quantity
      self.total += self.last_transaction
      quantity.times do 
        self.items<<title
      end
        
    end
    # binding.pry
    def apply_discount 
      if self.discount != 0
        discount_decimal = (100.0 - self.discount.to_f) / 100
        self.total = (self.total * discount_decimal).to_i
        "After the discount, the total comes to $#{self.total}."
      else
        "There is no discount to apply."
      end
    
    end

    

    def void_last_transaction
      #  self.items.map do |item,price|
         self.total -= self.last_transaction
       
    end
    

end

#  name = CashRegister.new()

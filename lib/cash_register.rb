require 'pry'
class CashRegister
    attr_accessor :discount  
    attr_reader   :total, :title, :price , :quantity
    
    @@item = []

    def initialize(discount = 0)
        @total = 0
        @discount = discount
    end

    def total=(total)
       @total=total
    end

    def add_item (title , price, quantity = 1)
        @title = title
        @quantity = quantity
        self.total=(@total + price*quantity)
    end

    def apply_discount
        if discount > 0
        @discount = @total * discount / 100
        self.total=(@total - discount) 
        "After the discount, the total comes to $#{self.total}."
        else "There is no discount to apply."
        end
    end

    def items
       @@item << self.title    
    end


end

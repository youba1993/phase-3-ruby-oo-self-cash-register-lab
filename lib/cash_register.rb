require 'pry'
class CashRegister
    attr_accessor :discount , :count, :last_item 
    attr_reader   :total, :title, :price , :quantity
    
    @item = []

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def total=(total)
       @total=total
    end

    def add_item (title , price, quantity = 1)
        quantity.times do 
            self.items << title
        end 
        self.total +=  price*quantity
        self.last_item = [title, price, quantity]
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
       @items 
    end

    def void_last_transaction
        self.total -= self.last_item[1]*self.last_item[2]
    end
    
end

require 'pry'

class CashRegister 

    attr_accessor :total, :discount, :title, :price, :last_item_total

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @title = title
        @cart = []
    end
    
    def add_item(item, price, quantity = 1)
        goods_info = {}
        goods_info[:item] = item
        goods_info[:price] = price
        goods_info[:quantity] = quantity
        
        @cart << goods_info
        @total += price * quantity
        @last_item_total = price * quantity
    end

    def apply_discount
        if @discount <= 0 
            "There is no discount to apply."
        else @total = @total - (@total * @discount / 100)
            "After the discount, the total comes to $800."
        end   
    end

    def items
        item_array = []
        @cart.each do |item_names|
            item_names[:quantity].times do 
            item_array << item_names[:item] 
            end
        end
        item_array
        # binding.pry

    end

    def void_last_transaction
        @total = @total - @last_item_total

    end
end
     
         

    
    
   
           

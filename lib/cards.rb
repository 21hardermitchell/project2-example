class Cards

     attr_reader :color, :number, :shape, :fill

     def initialize(color, number, shape, fill)
        @color = color
        @number = number
        @shape = shape
        @fill = fill
     end

     #This method outputs the cards to the screen in sentence form.
     def output_cards
        if("#{self.number}" == "One")
            puts "#{self.number} #{self.color} #{self.shape} that is #{self.fill}\n\n"
        else
            puts "#{self.number} #{self.color} #{self.shape}'s that are #{self.fill}\n\n"
        end
     end

end
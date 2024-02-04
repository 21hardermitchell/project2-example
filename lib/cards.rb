class Cards

     attr_reader :color, :number, :shape, :fill

     def initialize(color, number, shape, fill)
        @color = color
        @number = number
        @shape = shape
        @fill = fill
     end

     def output_cards
        if("#{self.number}" == "One")
            puts "[#{@initialDeck.find_index(card)}] #{self.number} #{self.color} #{self.shape} that is #{self.fill}"
        else
            puts "[#{@initialDeck.find_index(card)}] #{self.number} #{self.color} #{self.shape}'s that are #{self.fill}"
        end
     end

end
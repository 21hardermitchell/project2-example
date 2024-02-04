
class Cards

     attr_reader :color, :number, :shape, :fill

     def initialize(color, number, shape, fill)
        @color = color
        @number = number
        @shape = shape
        @fill = fill
     end

     def output_cards
        index = 1
        if("#{self.number}" == "One")
            puts "[#{index}] #{self.number} #{self.color} #{self.shape} that is #{self.fill}"
            index += 1
        else
            puts "[#{index}] #{self.number} #{self.color} #{self.shape}'s that are #{self.fill}"
            index += 1
        end
     end

end
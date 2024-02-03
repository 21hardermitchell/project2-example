
class Cards

     attr_reader :color, :number, :shape, :fill

     def initialize(color, number, shape, fill)
        @color = color
        @number = number
        @shape = shape
        @fill = fill
     end

     def output_cards
        puts "#{self.color} of #{self.number} of #{self.shape} of #{self.fill}"
     end

end
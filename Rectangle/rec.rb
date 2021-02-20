class Rectangle
  attr_reader :tl, :br

  def initialize(tl, br)
    @tl = tl
    @br = br
  end

  def overlap?(rec)    
    if (tl[0] > rec.br[0] || rec.tl[0] > br[0])
      return false
    end

    if (tl[1] < rec.br[1] || rec.tl[1] < br[1])
      return false
    end

    return true
  end
end

# Expected overlap
rec1 = Rectangle.new([5,15], [9,4])
rec2 = Rectangle.new([7,11], [17,6])
puts rec1.overlap?(rec2) 
rec2 = Rectangle.new([5,15], [9,4])
rec1 = Rectangle.new([7,11], [17,6])
puts rec1.overlap?(rec2) 

rec1 = Rectangle.new([1,5], [8,1])
rec2 = Rectangle.new([8,9], [15,5])
puts rec1.overlap?(rec2) 
rec2 = Rectangle.new([1,5], [8,1])
rec1 = Rectangle.new([8,9], [15,5])
puts rec1.overlap?(rec2) 

rec1 = Rectangle.new([10,10],	[20,5])
rec2 = Rectangle.new([5,8], [21,4])
puts rec1.overlap?(rec2) 
rec2 = Rectangle.new([10,10],	[20,5])
rec1 = Rectangle.new([5,8], [21,4])
puts rec1.overlap?(rec2) 

rec2 = Rectangle.new([3,12],  [13,6])
rec1 = Rectangle.new([4,11], [12,7])
puts rec1.overlap?(rec2)
rec1 = Rectangle.new([3,12],  [13,6])
rec2 = Rectangle.new([4,11], [12,7])
puts rec1.overlap?(rec2)

# Expected no overlap
rec1 = Rectangle.new([1,9], [7,4])
rec2 = Rectangle.new([12,16], [17,6])
puts rec1.overlap?(rec2)
rec2 = Rectangle.new([1,9], [7,4])
rec1 = Rectangle.new([12,16], [17,6])
puts rec1.overlap?(rec2)

rec1 = Rectangle.new([5,9], [12,5])
rec2 = Rectangle.new([9,15], [15,10])
puts rec1.overlap?(rec2)
rec2 = Rectangle.new([5,9], [12,5])
rec1 = Rectangle.new([9,15], [15,10])
puts rec1.overlap?(rec2)


# $ ruby rec.rb
# true
# true
# true
# true
# true
# true
# true
# true
# false
# false
# false
# false
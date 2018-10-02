# class Triangle
  
#   attr_accessor :side1, :side2, :side3
  
#   def initialization(side1, side2, side3)
#     @side1 = side1
#     @side2 = side2
#     @side3 = side3
#   end
  
#   def kind
#     if im_a_real_triangle1 != true && im_a_real_triangle2 != true
#       begin
#         raise TriangleError
#     rescue TriangleError => error
#       puts error.message
#     end
#   end 
# end
    
    
  
#   def im_a_real_triangle1
#     side1.positive? && side2.positive? && side3.positive?
#   end
  
#   def im_a_real_triangle2
#     side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1
#   end
  
#     class TriangleError < StandardError
#       def message
#         "This is not a triangle"
#     end 
#   end
# end

class Triangle
  def initialize(side_1,side_2,side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind()
    if (@side_1 <= 0) || (@side_2 <= 0) || (@side_3 <= 0)
      raise TriangleError
    elsif (@side_1+@side_2 <= @side_3) || (@side_1+@side_3 <= @side_2) || (@side_2+@side_3 <= @side_1)
      raise TriangleError
    else
      if (@side_1 == @side_2) && (@side_2 == @side_3)
        :equilateral
      elsif (@side_1 == @side_2) || (@side_2 == @side_3) || (@side_1 == @side_3)
        :isosceles
      elsif (@side_1 != @side_2) && (@side_2 != @side_3) && (@side_1 != @side_3)
        :scalene
      end
    end

  end

end

class TriangleError < StandardError
  # triangle error code
end

  
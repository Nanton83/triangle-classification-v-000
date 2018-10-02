class Triangle
  
  attr_accessor :side1, :side2, :side3
  
  def initialization(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind()
    if !(side1.positive? && side2.positive? && side3.positive?)
      raise TriangleError
      elsif
      !(side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1)
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
  
    class TriangleError < StandardError
      def message
        "This is not a triangle"
    end 
  end
end


  
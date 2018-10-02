class Triangle
  
  attr_accessor :side1, :side2, :side3
  
  def initialization(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind()
    if im_a_real_triangle1 == false
      raise TriangleError
      elsif
      im_a_real_triangle2 == false
      raise TriangleError
      
    end
  end 
  
  def im_a_real_triangle1
    side1.positive? && side2.positive? && side3.positive?
  end
  
  def im_a_real_triangle2
    side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1
  end
  
    class TriangleError < StandardError
      def message
        "This is not a triangle"
    end 
  end
end


  
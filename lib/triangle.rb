class Triangle
  
  attr_accessor :side1, :side2, :side3
  
  def initialization(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if im_a_real_triangle1 == true && im_a_real_triangle2 == true 
    
    else 
      raise TriangleError 
    end 
    
    if x == y && y == z && x == z
      :equilateral
    elsif x != y && y != z && z != x
      :scalene 
    else 
      :isosceles
    end 
  end
      
    
  end
  
  def im_a_real_triangle1
    side1.positive? && side2.positive? && side3.positive?
  end
  
  def im_a_real_triangle2
    side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1
  end
  
    class TriangleError < StandardError
      
    end 
  end
end



  
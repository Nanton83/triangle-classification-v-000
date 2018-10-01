class Triangle
  
  attr_accessor :side1, :side2, :side3
  
  def initialization(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if im_a_real_triangle1 && im_a_real_triangle2 == true 
      
    
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


class Triangle
  attr_accessor :x, :y, :z
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if kosher_triangle == true && kosher_triangle2 == true 
      puts true 
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
  
  def kosher_triangle 
    x.positive? && y.positive? && z.positive?
  end 
  
  def kosher_triangle2 
    x + y > z && x + z > y && y + z > x
  end 
end

class TriangleError < StandardError
  
end

  
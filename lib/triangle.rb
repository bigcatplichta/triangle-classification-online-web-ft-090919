class Triangle
  attr_accessor :side1, :side2, :side3 
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2 
    @side3 = side3 
  end 
  
  def kind 
 
    return :equilateral if equilateral?
    return :isosceles if isosceles?
    return :scalene if scalene?
    raise TriangleError if illegal?
    
  end 
  
  def equilateral?
   @side1 == @side2 && @side2 == @side3
  end 
  
  def isosceles?
    (@side1 == @side2 && @side1 != @side3) || (@side1 == @side3 && @side1 != @side2) || (@side2 == @side3 && @side1 != @side3)
  end 
  
  def scalene?
    @side1 != @side2 && @side2 != @side3
  end 
  
  def illegal?
    (@side1 == 0 || @side2 == 0 || @side3 == 0) || (@side1 > (@side2 + @side3))
  end 
  
  class TriangleError < StandardError
  end
  
end
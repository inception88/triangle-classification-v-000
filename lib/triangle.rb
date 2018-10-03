class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(v1, v2, v3)
    @v1 = v1
    @v2 = v2
    @v3 = v3
  end
  
  def kind 
    
  end
  
  class TrangleError < StandardError
  
  end
end

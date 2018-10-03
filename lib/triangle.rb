class Triangle
  attr_accessor :kind
  
  def initialize(v1, v2, v3)
    @v1 = v1
    @v2 = v2
    @v3 = v3
  end
  
  def kind 
    if @v1 == @v2 && @v2 == @v3
      @kind = :equilateral
    end
      
  end
  
  class TrangleError < StandardError
  
  end
end

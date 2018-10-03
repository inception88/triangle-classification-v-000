class Triangle
  attr_accessor :kind
  
  def initialize(v1, v2, v3)
    @v1 = v1
    @v2 = v2
    @v3 = v3
    @v12 = @v1+@v2
    @v13 = @v1+@v3
    @v23 = @v2+@v3
  end
  
  def kind
    if @v12 !> @v3 || @v13 !> @v2 || @v23 !> @v1
      begin
      raise TriangleError
      rescue TriangleError => error 
      error.message
      end
    end
    if @v1 == @v2 && @v2 == @v3
      @kind = :equilateral
    elsif @v1 == @v2 || @v2 == @v3 || @v1 == @v3
      @kind = :isosceles
    elsif @v1 != @v2 && @v2 != @v3 && @v1 != @v3
      @kind = :scalene
    end
      
  end
  
  class TriangleError < StandardError
    def message
      puts "This is a triangle inequslity error!"
      "This is a triangle inequslity error!"
    end
  end
end
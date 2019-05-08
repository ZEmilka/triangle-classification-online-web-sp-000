class Triangle

  def initialize(side_a,side_b,side_c)
    @side_a=side_a
    @side_b=side_b
    @side_c=side_c
  end

  def triangle
    if @side_a||@side_b||@side_c ==0
      raise TriangleError
    else @side_a+@side_b=side_c||@side_a+@side_c=@side_b||@side_b+@side_c=@side_a
      raise TriangleError
    end
  end

  def kind
    if @side_a==@side_b && @side_b==@side_c
      :equilateral
    elsif @side_a==@side_b || @side_b==@side_c || @side_a==@side_c
      :isosceles
    else @side_a!=@side_b && @side_b!=@side_c && @side_a==@side_c
      :scalene
    end
  end

  class TriangleError < StandardError
  end


end

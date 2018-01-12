class Triangle
attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [@side1, @side2, @side3]
  end

  def kind
    sides = @sides.uniq
    if sides.length == 1 && @sides.all? { |e| e > 0  }
      return :equilateral
    elsif sides.length == 2 && @sides.all? { |e| e > 0  }
      return :isosceles
    elsif sides.length == 3 && @sides.all? { |e| e > 0  }
      return :scalene
    else
      raise error
    end
  end

class TriangleError < StandardError



end


end

class Triangle
attr_accessor :sides

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
      begin
        raise PartnerError
      rescue PartnerError => error
        puts error.message
      end
    end
  end



end

class TriangleError < StandardError
  def message
    "This is not a valid triangle."
  end
end

class Triangle
  define_method(:initialize) do |side_a, side_b, side_c|
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  define_method(:triangle?) do
    if @side_c >(@side_b.+(@side_a)) || @side_b > (@side_c.+(@side_a)) || @side_a > (@side_b.+(@side_c))
      "It's not a triangle!"
    else
      true
    end
  end

  define_method(:type_of_triangle) do
    if self.triangle?() == true
      if @side_a == @side_b && @side_b == @side_c
        "It's an equilateral triangle."
      elsif (@side_a != @side_b) && (@side_b != @side_c)
        "It's a scalene triangle."
      elsif (@side_a == @side_b) || (@side_a == @side_c) || (@side_b == @side_c)
        "It's an isosceles triangle."
      end
    end
  end

end

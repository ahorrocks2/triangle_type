class Triangle
  define_method(:initialize) do |side_a, side_b, side_c|
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  define_method(:triangle?) do
    if @side_a == @side_b && @side_b == @side_c
      true
    elsif @side_a == @side_b || @side_a == @side_c || @side_b == @side_c
      true
    else
      false
    end
  end

end

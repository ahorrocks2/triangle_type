require('rspec')
require('triangle')

describe(Triangle) do
  describe("#triangle?") do
    it('will return true if it is a triangle') do
      test_triangle = Triangle.new(4, 4, 4)
      expect(test_triangle.triangle?()).to(eq(true))
    end

    it('will return false if it is not a triangle') do
      test_triangle = Triangle.new(2, 3, 25)
      expect(test_triangle.triangle?()).to(eq("It's not a triangle!"))
    end

    it('will return true if it is an equilateral triangle') do
      test_triangle = Triangle.new(2, 2, 2)
      expect(test_triangle.type_of_triangle()).to(eq("It's an equilateral triangle."))
    end

    it('will return true if it is an isosceles triangle') do
      test_triangle = Triangle.new(2, 2, 3)
      expect(test_triangle.type_of_triangle()).to(eq("It's an isosceles triangle."))
    end

    it('will return true if it is a scalene triangle') do
      test_triangle = Triangle.new(2, 3, 4)
      expect(test_triangle.type_of_triangle()).to(eq("It's a scalene triangle."))
    end

  end
end

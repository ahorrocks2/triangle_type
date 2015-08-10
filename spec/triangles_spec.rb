require('rspec')
require('triangles')

describe(Triangle) do
  describe("#triangle?") do
    it('will test initialize method') do
      test_triangle = triangle.new(4, 4, 4)
      expect(test_triangle.triangle?()).to(eq(true))
    end

  end
end

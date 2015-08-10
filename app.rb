require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
also_reload('lib./**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  side_a = params.fetch('side_a').to_i()
  side_b = params.fetch('side_b').to_i()
  side_c = params.fetch('side_c').to_i()
  test_triangle = Triangle.new(side_a, side_b, side_c)
  @triangle = test_triangle.type_of_triangle()
  erb(:results)
end

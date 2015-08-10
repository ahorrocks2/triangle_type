require('sinatra')
require('sinatra/reloader')
require('./lib/triangles')
also_reload('lib./**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  side_a = params.fetch('side_a')
  side_b = params.fetch('side_b')
  side_c = params.fetch('side_c')
  @triangle = Triangle.new(side_a, side_b, side_c)
  erb(:results)
end

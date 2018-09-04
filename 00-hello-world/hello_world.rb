def hello_world(name = 'World')
  x = "Hello, #{name}!"
  if name == ""
    x = "Hello, World!"
  end
  return x
end

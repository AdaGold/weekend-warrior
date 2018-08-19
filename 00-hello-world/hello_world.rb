def hello_world(name = '')
  # First method way:
  # if name == ''
  #   greeting = "Hello, World!"
  # elsif name != ''
  #   greeting = "Hello, #{name}!"
  # end

  return "Hello, #{name.empty? ? 'World' : name}!"

  # return greeting
end

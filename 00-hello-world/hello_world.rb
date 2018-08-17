def hello_world(name = "")    #(name: "")
  if name == ""
    return "Hello, World!"
  else
    return "Hello, #{name}!"
  end
end


# def hello_world(name = "World", name: "")
#   if name == "World"
#     puts "Hello, World!"
#   else
#     puts "Hello, #{name}!"
#   end
# end
#
# hello_world(name = "World")

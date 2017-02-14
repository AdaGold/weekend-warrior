
def hello_world  (name=nil)
  if name == nil || name == ""
    return "Hello, World!"
  else
    return "Hello, #{name}!"
  end
end

do

function run(msg, matches)
  return 'lionbot '.. VERSION .. [[ 
  Checkout http://bilakh.ir
  bilakh.]]
end

return {
  description = "Shows bot version", 
  usage = "!version: Shows bot version",
  patterns = {
    "^!version$"
  }, 
  run = run 
}

end

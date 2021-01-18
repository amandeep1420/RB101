# RE-DO after prep/before assessment (so it's not stored in memory)
# and PAY ATTENTION TO THE WORDING OF THE PROMPT
# 8V

=begin
P
  - input: n, "total number of switches"
  - output: array
..
A
  - first, create hash with n lights
  - second, we need to figure out a way to iterate over the hash
  - we need a way to decide if a light will be toggled that accounts for the first round
  
  
=end

def lights(n)
  lights = {}
  1.upto(n) { |n| lights[n] = false } 
  1.upto(n) do |nth|
    lights.each { |light, status| lights[light] = !status if light % nth == 0 }
  end
  lights.select { |_light, status| status == true }.keys
end

lights(5)
  
  
  
  
# we got a solution after viewing, viewing others', reverse engineering...whew
  
  
  
  
  # created hash with lights and status
# I fundamentally misunderstood the problem - I thought it was every other light, but
# it's every 2nd, then every 3rd, then every 4th, and so on
# let's try again before leaving this one today
# we've created the array
# next, we need a few things
=begin    - a way to swap back and forth
          - iteration
          
=end


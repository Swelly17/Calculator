def add(a, b)
  return a + b
end

def subtract(a, b)
  return a - b
end

def multiply(a, b)
  return a * b
end

def exponent(a, b)
  return a ** b
end

def divide(a, b)
  return a / b
end

PI = 3.14159265

def area(a, b)
  return a*b
end

def circle_area(r)
  return (PI*(r**2))
end

def volume(a,b,c)
  return a*b*c
end

def sphere_volume(r)
  return ((4/3.0)*PI*(r**3))
end

def dual_prompt
  puts "Enter the first number"
  a = gets.chomp.to_f
  puts "Enter the second number"
  b = gets.chomp.to_f
  return a, b
end

def l_w_h_prompt
  puts "Enter the length"
  l = gets.chomp.to_f
  puts "Enter the width"
  w = gets.chomp.to_f
  puts "Enter the height"
  h = gets.chomp.to_f
  return l, w, h
end

def get_radius
  puts "Enter the radius"
  r = gets.chomp.to_f
  return r
end

puts "Please express the operation you wish to perform:
\n ______________________
\n Examples-
\n Add (+)
\n Subtract (-)
\n Multiply (*)
\n Exponent (**)
\n Divide (/)
\n Area
\n Circle Area
\n Volume
\n Sphere Volume
\n ______________________"
operator = gets.chomp.downcase
  case operator
    when '+' #Need to make these work without repetition of code below
    when 'addition'
      number_1, number_2 = dual_prompt
      puts add(number_1, number_2)
    when '-'
    when 'subtract'
      number_1, number_2 = dual_prompt
      puts subtract(number_1, number_2)
    when '*'
    when 'multiply'
      number_1, number_2 = dual_prompt
      puts multiply(number_1, number_2)
    when '**'
    when 'exponent'
      number_1, number_2 = dual_prompt
      puts exponent
    when '/'
    when 'divide'
      number_1, number_2 = dual_prompt
      puts divide(number_1, number_2)
    when 'area'
      number_1, number_2 = dual_prompt
      puts area(number_1, number_2)
    when 'circle area'
      r = get_radius
      puts "The area is " + circle_area(r).to_s
    when 'volume'
      number_1, number_2, number_3 = l_w_h_prompt
      puts volume(number_1, number_2, number_3)
    when 'sphere volume'
      r = get_radius
      puts "The volume is " + sphere_volume(r).to_s
    else
      puts "I do not recognize the the requested operation"
  end

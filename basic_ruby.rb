# 1. A loop that implements "while" and "until"
x = 1
while x < 100
  puts x
  x = x * 2
end

y = 5
until y > 200
  puts y
  y = y * 2
end


# 2. A loop that is nested inside another loop
name = ["Larry", "Sedy", "Naly", "Tahiry"]
attributes = ["obidient", "gentle", "determined", "diligent"]
name.each do |name|
   puts name
   attributes.each do |attributes|
     puts "A Ruby guy who is #{attributes}"
   end
end


# 3. Implement “next” in the nested inner loop. What does this do?
name = ["Larry", "Sedy", "Naly", "Tahiry"]
attributes = ["obidient", "gentle", "determined", "diligent"]
name.each do |name|
   puts name
   attributes.each do |attributes|
     next if name == "Naly"
     puts "A Ruby guy who is #{attributes}"
   end
end
# "next" will jump to the next loop.


# 4. Raise an exception in the script
name = ["Larry", "Sedy", "Naly", "Tahiry"]
attributes = ["obidient", "gentle", "determined", "diligent"]

begin
Name.each do |name|
   puts name
   attributes.each do |attributes|
     next if name == "Naly"
     puts "A Ruby guy who is #{attributes}"
   end
end
rescue
  puts "You caused an error!"
end

# 5. Showing an example of using “begin/rescue”
begin
  puts 10 / 0
rescue => e
  puts "Error: #{e}, a #{e.class}"
end
# why would you use this in your code?
# I would use "beging/rescue" in my code because it's a rescue class, used to define blocks of code to handle exceptions. An exception is an event that occurs when an error arises within a program, and can cause the program to quit immediately with an error message.


# 6. Showing an example of using 1 “begin” statement with multiple “rescue” statements
e = 100
begin
  puts e / 0
rescue ZeroDivisionError
  puts "Your code needs to be fixed"
rescue MyOwnException
  if e != 100
    puts "Error"
  end 
rescue
  puts e.class
end
# why would you do this?
# I would do this to handle a specific exeption who has been raised in my code


# 7. Show an example of using “ensure” with “begin/rescue”
file = File.open("time.txt", "w")
begin
  file << "#{content} \n"
rescue
  puts "Error"
ensure
  file.close
end
# why would you use this?
# I would use "ensure" to make sure that the code on that exeption will always run or be executed no matter what.



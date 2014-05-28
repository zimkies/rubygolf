text = File.read('./golf.rb')
chars = text.each_char.map(&:ord)
lines = chars.map {|x| (0...x).map{' '}.join }.join "\n"
File.open('results.rb', 'w') do |f|
  f << lines
end
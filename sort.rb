data = File.read('workshops.md').split("\n")

splits = ['']

i = 0

data.each do |line|
  if /^## /.match(line)
    i += 1
    splits[i] = ''
  end

  splits[i] += line + "\n"
end

puts splits.sort.join

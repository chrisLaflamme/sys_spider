dirs = File.absolute_path('./ruby.rb').split('/') # find where I'm at
dirs.shift
Dir.chdir("/#{dirs[0]}/") # cd to the first dir
puts Dir.pwd
puts Dir.glob('*')

# are there dirs here?
contents = Dir.glob('*')
contents.each do |c|
  if c == '.git'
    do some stuff
  elsif c.is_dir?
    Dir.chdir("/#{c}/")
      contents = Dir.glob('*')
      contents.each do |c|
        if c == '.git'
          do stuff
        elsif c.is_dir?
          som other stuff
        end
      end
    end
  end
          

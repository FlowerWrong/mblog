require 'fileutils'

Dir.chdir('/home/yang/dev/ruby/rails/wine/app/views')
puts Dir.pwd
dirs = Dir.glob("*")
dirs.each do |d|
  Dir.chdir("/home/yang/dev/ruby/rails/wine/app/views/#{d}")
	puts Dir.pwd
	FileUtils.rm Dir.glob('*.json.jbuilder')
end

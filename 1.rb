puts 'Enter source address of image'
puts '# for eg: Downloads/trees.jpg'
background =gets.chomp
if File.exist?(background) 
	file_name = '/etc/default/grub'
	
	cmd = `cp #{background} /etc/default`
	
	puts 'Successfully copied file'
	f = File.open(file_name,'r')
	file_content = ''
	i = -1
	f.each_line do |line|
		file_content += line unless line.include?('GRUB_BACKGROUND')
	end
	file_content += "\n" unless file_content[file_content.length-1] == "\n"
	file_content += "GRUB_BACKGROUND=\"/etc/default/#{background}\""
	f.close
	File.open(file_name,'w') do |file|
		file.write(file_content)
	end

	cmd = `update-grub`
else
	puts "Couldn't find the image. Try again"
end


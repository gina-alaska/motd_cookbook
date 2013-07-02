module Helpers
  module Motd
    include MiniTest::Chef::Assertions
    include MiniTest::Chef::Context
    include MiniTest::Chef::Resources
    
    def motd_d 
      files = Dir.glob("/etc/motd.d/*")
      
      contents = []
      contents << ("*" * 80) + "\n"
      files.each do |file|
        contents << ::File.read(file)
      end
      contents << ("*" * 80) + "\n"
      contents.join
    end

  end
  
end

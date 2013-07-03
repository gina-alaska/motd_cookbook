name             "motd"
maintainer       "Scott Macfarlane"
maintainer_email "scott@gina.alaska.edu"
license          "All rights reserved"
description      "Installs/Configures motd"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.2.2"

%w{centos redhat}.each do |os|
  supports os
end
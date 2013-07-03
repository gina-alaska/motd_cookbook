# motd cookbook

LWRP for cookbooks to add to the motd

# Requirements
None

# Usage
include_recipe "motd"

motd "motd_name" do
  message "Your Message"
end

motd "different_motd" do
  message [ "Your", "message"]
end

# Attributes
none

# Recipes
default.rb
- Creates /etc/motd.d
- Provides a ruby block that is run when motd.d is updated

lwrp.rb
- Used to test the motd lwrp

# Author

Author:: Scott Macfarlane (<scott@gina.alaska.edu>)

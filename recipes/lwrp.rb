include_recipe "motd::default"

motd "one" do
  message 'lorem ipsum'
end

motd "array" do
  message 10.times.collect{ "lorem ipsum array"}
end

motd "title with space" do
  message "Some message"
end

motd "Reallylongmessage" do
  message 50.times.collect{ "slkdjfas"}.join
end

motd "/etc/create_a_bad_file" do
  message "I created a file where I shouldn't have"
end
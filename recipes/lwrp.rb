include_recipe "motd::default"

motd "one" do
  message 'lorem ipsum'
end

motd "array" do
  message 100.times.collect{ "lorem ipsum array"}
end

motd "title with space" do
  message "Some message"
end

motd "Reallylongmessage" do
  message 500.times.collect{ "slkdjfas"}.join
end
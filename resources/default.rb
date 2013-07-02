actions :create

default_action :create

attribute :name,    kind_of: String, name_value: true
attribute :message, kind_of: [String, Array]


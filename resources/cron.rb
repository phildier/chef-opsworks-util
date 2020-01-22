actions [:create]
default_action :create

attribute :name, :kind_of => String, :required => true, :name_attribute => true
attribute :servers, :kind_of => Array, :required => true

attribute :minute, :kind_of => String, :default => "*"
attribute :hour, :kind_of => String, :default => "*"
attribute :month, :kind_of => String, :default => "*"
attribute :weekday, :kind_of => String, :default => "*"

attribute :path, :kind_of => String, :default => "/tmp"

attribute :mailto, :kind_of => String, :default => nil

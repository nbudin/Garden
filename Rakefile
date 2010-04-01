require 'hoe'

begin
  require "vlad"
  Vlad.load(:app => nil, :scm => "git", :config => "conf/deploy.rb")
rescue LoadError
  # do nothing
end

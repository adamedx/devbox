#
# Cookbook Name:: devbox
# Recipe:: default
#
# Copyright 2013, Adam Edwards
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'git'

if node[:platform] == "windows"
#  include_recipe 'winrm_dev'
  include_recipe 'chocolatey'
  include_recipe 'devbox::powershell_dev'
  chocolatey "emacs"
else
  package "emacs" do
    action :install
  end

  include_recipe 'build-essential'
  include_recipe 'ruby_build'

end

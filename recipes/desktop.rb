#
# Cookbook Name:: devbox
# Recipe:: desktop
#
# Copyright 2013, Adam Edwards
#
# All rights reserved - Do Not Redistribute
#

if node[:platform] != "windows"
  package "xrdp" do
    action :install
  end

  package "firefox" do
    action :install
  end
else
  include_recipe 'chocolatey'  
  include_recipe 'devbox::powershell_dev'
  chocolatey "emacs"
  chocolatey "conemu"
  
  powershell_script 'psget' do
    code '(new-object Net.WebClient).DownloadString("http://psget.net/GetPsGet.ps1") | iex'
  end

  # TODO: need to check if module is installed in profile, and if not,
  # add it to profile. Also need to add in line to set emacs keys.
end


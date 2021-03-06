#
# Cookbook Name:: devbox
# Recipe:: desktop
#
# Copyright 2015, Adam Edwards
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

if node[:platform] != 'windows'
  include_recipe 'apt'
  package 'xrdp';
  package 'firefox';
  package 'emacs';
else
  include_recipe 'devbox::chocolatey_install'
#  chocolatey 'emacs'
  powershell_script 'install_emacs' do
    code 'chocolatey install emacs -y'
    not_if 'get-command emacs'
  end
end


#
# Cookbook Name:: devbox
# Recipe:: powershell_dev
#
# Copyright 2013, Adam Edwards
#
# All rights reserved - Do Not Redistribute
#

powershell_script 'ExecutionPolicyAtLeastRemoteSigned' do
  architecture :x86_64
  code 'set-executionpolicy remotesigned -force -scope localmachine'
  not_if "(get-executionpolicy -scope localmachine) -eq 'remotesigned'"
end

powershell_script 'ExecutionPolicyAtLeastRemoteSignedX86' do
  architecture :i386
  code 'set-executionpolicy remotesigned -force -scope localmachine'
  not_if "(get-executionpolicy -scope localmachine) -eq 'remotesigned'"
end

# Cookbook Name:: devbox
# Recipe:: powershell_dev
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

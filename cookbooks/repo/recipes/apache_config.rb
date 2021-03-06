#
# Cookbook Name::       repo
# Description::         Configures Apache to serve your cool stuff.  
# Recipe::              apache_config
# Author::              Brandon Bell - Infochimps, Inc
#
# Copyright 2009, Infochimps, Inc.
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

include_recipe 'apache2::default'

template "#{node['apache']['dir']}/sites-available/repo.conf" do
  source "repo.conf.erb"
  mode 0644
end

apache_site "repo.conf"

apache_site "000-default" do
  enable false
end

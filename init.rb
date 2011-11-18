require 'redmine'

Redmine::Plugin.register :kanban_table do
  name 'Redmine Kanban Table plugin'
  author 'Rocco Stanzione'
  description 'Redmine plugin to display a simple Kanban table'
  version '0.0.1'
  url 'http://github.com/trappist/redmine_kanban_table'
  author_url 'http://github.com/trappist'
  settings :default => { 
    :closed_expire => "7"
  }, :partial => 'settings/partial'

end

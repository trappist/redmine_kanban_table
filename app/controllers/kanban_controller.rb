class KanbanController < ApplicationController
  unloadable
  helper :issues
  
  def index
    @users = User.current.team
    @statuses = IssueStatus.find(Setting.plugin_kanban_table['issue_stati'])
  end

end

class KanbanController < ApplicationController
  unloadable
  helper :issues
  
  def index
    @managers = User.find_all_by_is_manager(true)
    @user     = params[:id] ? User.find_by_login(params[:id]) : User.current
    @team     = @user.team
    @manager  = @user.is_manager ? @user : @user.manager
    @limits   = Hash[*Setting.plugin_kanban_table[:limits].map do |k,v|
      [k.to_i,(v ? v.to_i : 99999)]
    end.flatten] rescue {}
    @statuses = IssueStatus.find(Setting.plugin_kanban_table['issue_stati'], :order => "position")
  end

end

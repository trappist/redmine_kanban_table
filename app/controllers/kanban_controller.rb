class KanbanController < ApplicationController
  unloadable
  helper :issues
  
  def index
    @teams  = Team.find(:all, :order => :name)
    @team   = params[:id] ? Team.find(params[:id]) : User.current.teams.first
    @limits = Hash[*Setting.plugin_kanban_table[:limits].map do |k,v|
      [k.to_i,(v ? v.to_i : 99999)]
    end.flatten] rescue {}
    @statuses = IssueStatus.find(Setting.plugin_kanban_table['issue_stati'], :order => "position")
  end

end

class ApplicationController < ActionController::Base
  before_action :track_visit
  before_action :track_page_visit

  private

  def track_visit
    session[:last_visited] ||= Time.current
    session[:visit_count] ||= 0
    session[:visit_count] += 1
  end

  def track_page_visit
    session[:page_visits] ||= {}
    key = "#{controller_name}##{action_name}"
    session[:page_visits][key] ||= 0
    session[:page_visits][key] += 1
  end
end

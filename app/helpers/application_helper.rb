module ApplicationHelper
  def time_ago(timestamp)
    return "never" unless timestamp
    diff = Time.current - timestamp.to_time

    case diff
    when 0..59
      "#{diff.to_i} seconds ago"
    when 60..3599
      "#{(diff / 60).to_i} minutes ago"
    when 3600..86399
      "#{(diff / 3600).to_i} hours ago"
    else
      "#{(diff / 86400).to_i} days ago"
    end
  end

  def time_based_greeting
    hour = Time.current.hour
    case hour
    when 5..11 then "Good morning!"
    when 12..16 then "Good afternoon!"
    when 17..20 then "Good evening!"
    else "Good night!"
    end
  end
end

module ApplicationHelper
  def date_time(date)
    date.strftime('%b, %d %Y - %H:%M')
  end

end

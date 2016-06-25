# frozen_string_literal: true
# :nodoc:
module SeverityLevelsHelper
  
  # Find a sutiable color based on the background color
  def text_color_for_bg(bg_color)
      if bg_color.length == 4
        r, g, b = bg_color[1, 4].scan(/./).map { |v| (v * 2).hex }
      else
        r, g, b = bg_color[1, 7].scan(/.{2}/).map(&:hex)
      end

      if (r + g + b) > 500
        '#333333'
      else
        '#FFFFFF'
      end
    end

end

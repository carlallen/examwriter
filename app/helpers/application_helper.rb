module ApplicationHelper
  def icon(icon_name, color=nil)
    classes = "icon-#{icon_name}"
    classes += " icon-#{color}" if color
    content_tag("i", nil, :class => classes)
  end
  
  def icon_with_text(icon_name, text)
    "#{icon(icon_name, "white")} #{text}".html_safe
  end
end

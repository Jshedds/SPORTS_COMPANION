module ApplicationHelper
  def render_icon(icon, classes: "", height: nil, width: nil)
    classes ||= ""
    render "icons/#{icon}", class: classes, height: height, width: width
  end
end

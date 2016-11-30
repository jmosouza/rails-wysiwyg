module ApplicationHelper
  def button_link_to(name = nil, options = nil, style = :default, html_options = {}, &block)
    html_options[:class] ||= []
    html_options[:class] << 'btn'
    html_options[:class] << case style
    when :primary then 'btn-primary'
    when :danger  then 'btn-danger'
    when :default then 'btn-default'
    end
    link_to name, options, html_options, &block
  end
end

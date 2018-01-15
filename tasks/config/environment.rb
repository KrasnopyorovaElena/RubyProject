# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionView::Base.field_error_proc = Proc.new do |html_tag, instance| 
  if html_tag =~ /^<input/
    html_field = Nokogiri::HTML::DocumentFragment.parse(html_tag)
    html_field.children.add_class 'is-invalid'
    html_field.to_html.html_safe
  else
    html_tag.html_safe
  end
end

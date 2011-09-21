# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Testgen::Application.initialize!
ActionView::Base.field_error_proc = Proc.new { |html_tag, instance| "<span class=\"field_with_errors\">#{html_tag}</span>".html_safe }
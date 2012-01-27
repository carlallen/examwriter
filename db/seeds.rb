# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# find or set question counts to defaults
Option.get("true_false_questions_count").present? || Option.set("true_false_questions_count", 20)
Option.get("multi_choice_questions_count").present? || Option.set("multi_choice_questions_count", 20)
Option.get("test_title").present? || Option.set("test_title", "ExamWriter")
if Rails.env.development? and User.first.blank?
  User.new(:email => 'test@example.com', :password => 'password').save(:validate => false)
end
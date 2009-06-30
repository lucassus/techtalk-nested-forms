require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  should_belong_to :project
  should_validate_presence_of :name
end

require 'test_helper'

class FezTest < ActiveSupport::TestCase
  test 'module' do
    assert_kind_of Module, Fez
  end

  test 'truth' do
    assert true
  end
end

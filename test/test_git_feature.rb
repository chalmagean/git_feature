require 'minitest/autorun'
require 'git_feature'

class GitFeatureTest < Minitest::Test
  def test_test
    assert_equal "Hi", GitFeature.test
  end
end

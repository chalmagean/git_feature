require 'minitest/autorun'
require 'git_feature'

describe GitFeature::Branch do
  describe '.format' do
    it 'converts the arguments into a feature branch format' do
      issue_title = "bundle install --local doesn't work."
      output = GitFeature::Branch.format(issue_title, '24176')
      assert_equal "feature/24176_bundle_install_local_doesnt_work", output
    end
  end
end

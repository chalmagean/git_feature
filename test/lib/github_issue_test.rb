require 'minitest/autorun'
require 'git_feature'

describe GitFeature::GithubIssue do
  describe ".fecth_issue" do
    it 'sends a request to Github and returns the response' do
      url = 'https://github.com/rails/rails/issues/24176'
      github_client = Minitest::Mock.new
      issues = Minitest::Mock.new

      github_client.expect :issues, issues
      issues.expect :get, "response", ["rails", "rails", "24176"]

      issue = GitFeature::GithubIssue.fetch_issue(url, github_client)

      assert "response", issue

      github_client.verify
      issues.verify
    end
  end
end


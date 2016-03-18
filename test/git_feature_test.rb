require 'minitest/spec'
require 'minitest/autorun'
require 'vcr'
require 'github_api'
require 'git_feature'

describe "GitFeature" do
  it "parses Github issues returning a branch name" do
    github_client = Github.new(oauth_token: ENV['GITHUB_OAUTH_TOKEN'])

    VCR.use_cassette('github/rails_issue_24176') do
      # The title of this issue is: "bundle install --local doesn't work."
      url = 'https://github.com/rails/rails/issues/24176'
      issue = GitFeature::GithubIssue.fetch_issue(url, github_client)
      branch_name = GitFeature::Branch.format(issue.title, issue.number)
      assert_equal "feature/24176_bundle_install_local_doesnt_work", branch_name
    end
  end
end


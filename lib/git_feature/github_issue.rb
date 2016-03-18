module GitFeature
  class GithubIssue
    def self.fetch_issue(url, github_client)
      repo_owner, repo_name, _, issue_number = url.split('/').last(4)
      github_client.issues.get(repo_owner, repo_name, issue_number)
    end
  end
end


module GitFeature
  class Branch
    def self.format(title, number)
      # issue = fetch_issue(url, oauth_token, github_client)
      # $stdout.print "feature/#{number}_#{format_issue_title(title)}"
      # $stdout.flush
      "feature/#{number}_#{format_issue_title(title)}"
    end

    private

      def self.format_issue_title(title)
        title.
          downcase.
          gsub(/'/, ''). # remove single quotes
          gsub(/[^a-z]+/, '_'). # replace non-word chars with _
          gsub(/[^a-z]$/, '') # remove non-word trailing chars
      end
  end
end

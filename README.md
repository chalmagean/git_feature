# Git Feature

Given a GitHub issue URL, it returns the title of the issue formatted as a git feature branch which you can then pipe into `git checkout -b` to create a new git branch.

## Install

```
rake package
gem install pkg/git_feature-<version>.gem
```

## Usage

```
git_feature https://github.com/rails/rails/issues/24189 | xargs git checkout -b
=> feature/24189_self_referential_has_many_through_joins_doesnt_use_table_alias_on_where_conditions
```

## Testing

```
GITHUB_OAUTH_TOKEN=<your_token> rake
```

## TODO

* Reuse previously created OAuth Token
* Add support for bugfix branches

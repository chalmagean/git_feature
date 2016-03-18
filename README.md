## Usage

```
git_feature https://github.com/rails/rails/issues/24189 | xargs git checkout -b
```

## Testing

```
GITHUB_OAUTH_TOKEN=<your_token> rake
```

## TODO

* Reuse previously created OAuth Token
* Add support for bugfix branches

# LTV Rubocop Configuration

This is a shared Rubocop configuration, intended to be included in other Ruby
projects.

# Installation

Good news! You don't need to copy/paste the Rubocop configuration. Put this in a
repository's Gemfile:

```
git 'https://github.com/ltvco/ebp-rubocop-config.git', tag: 'v0.1.0' do
  gem 'ltv-rubocop'
end
```

Note that the `tag` parameter locks the other repositories to a specific Git
tag; this is desirable because when we change configurations in this repository,
we don't want to cause existing projects to have failing cops. Using versions
allows each project to update at their own pace.

And then put this in the repository's `.rubocop.yml`:

```
inherit_gem:
  ltv-rubocop: rubocop.yml
```

# Possible improvements

* It may be worthwhile for us to create multiple gems in this repository; this
  would enable us to have separate gems for Rails-specific configuration and
  general Ruby configuration. This would involve defining multiple gemspec files
  here, and client code would need to specify which gem from the repository to
  include.

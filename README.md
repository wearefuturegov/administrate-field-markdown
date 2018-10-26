# Administrate::Field::SimpleMDEMarkdown

A plugin for markdown fields in [Administrate](https://github.com/thoughtbot/administrate/) using [simplemde](https://simplemde.com/)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'administrate-field-simple_mde_markdown'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install administrate-field-simple_mde_markdown
    
## Usage

Add to your `FooDashboard`:

    ATTRIBUTE_TYPES = [
      bars: Field::SimpleMDEMarkdown,
    ]
    
You can also add any options as documented in the [SimpleMDE docs](https://github.com/sparksuite/simplemde-markdown-editor#configuration)

    ATTRIBUTE_TYPES = [
      bars: Field::SimpleMDEMarkdown.with_options(simplemde: {
        autofocus: true,
        initialValue: 'Put your markdown here'
      }),
    ]

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Administrate::Field::SimpleMDEMarkdown project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/wearefuturegov/administrate-field-markdown/blob/master/CODE_OF_CONDUCT.md).

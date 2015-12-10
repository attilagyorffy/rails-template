# rails-template
My Rails template that I use when generating new Rails applications

This template sets up initial configuration of newly generated Rails
applications by adding a few gems that I always end up using, configures
Rails' generators to leave less fluff, etc.

## How to use it?

Just pass in a `template` parameter when generating a new Rails application. For example:

```
$ rails new my_application --template=https://raw.githubusercontent.com/liquid/rails-template/master/template.rb
```

If you want to make this your default, you can add this into your `.railsrc` file in your `$HOME`:

```
--template=https://raw.githubusercontent.com/liquid/rails-template/master/template.rb
```

## What does it do?

* It adds the following gems in `development` and `test`:

  * `gem 'rspec-rails', '~> 3.0'`
  * `gem 'factory_girl_rails'`

* It sets up the application to run with Guard:

  * `gem 'guard-livereload'`
  * `gem 'guard-rspec'`

* It automatically writes model annotations using the `annotate` gem after migrations.

* It configures Rails' generators to skip generating the following...

  * New helper files (because we really don't need that many of them)
  * New JavaScripts and stylesheets (see reason above)
  * View specs (because you should really feature test your views instead)

## This may not work for you

These are really just my own configuration files. They might or might not work for you,
but you're welcome to take a look and see whether this will be useful to you in any way.

# LICENSE

These files really shouldn't need any LICENSE file, but it uses 'CC0 1.0 Universal' anyway.
See the LICENSE file for details.

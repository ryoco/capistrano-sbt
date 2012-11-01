# capistrano-sbt

a capistrano recipe to deploy [sbt](https://github.com/harrah/xsbt) based projects.

## Installation

Add this line to your application's Gemfile:

    gem 'capistrano-sbt'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-sbt

## Usage

This recipes will try to do following things during Capistrano `deploy:setup` and `deploy` tasks.

1. Download and install sbt for current project
2. Prepare optional `*.sbt` for current project (optional)
3. Build sbt project remotely (default) or locally

To build you sbt projects during Capistrano `deploy` tasks, add following in you `config/deploy.rb`. By default, sbt build will run after the Capistrano's `deploy:finalize_update`.

    # in "config/deploy.rb"
    require 'capistrano-sbt'
    set(:sbt_version, '0.11.2') # sbt version to build project

Following options are available to manage your sbt build.

 * `:sbt_use_extras` - Use [sbt-extras](https://github.com/paulp/sbt-extras) to manage sbt. `false` by default.
 * `:sbt_version` - Project sbt version. This value may be discarded if `sbt_use_extras` is turned `true`.
 * `:sbt_archive_url` - Download URL for specified sbt version. This value may be discarded if `sbt_use_extras` is turned `true`.
 * `:sbt_compile_locally` - compile project on localhost. false by default.
 * `:sbt_goals` - sbt commands and tasks to execute. default is "reload clean package".
 * `:sbt_update_settings` - update `*.sbt` or not. false by default.
 * `:sbt_update_settings_locally` - udate `*.sbt` or not on local compilation. false by default.
 * `:sbt_settings` - list of your optional `*.sbt` files
 * `:sbt_settings_local` - list of your optional `*.sbt` files in on local compilation.
 * `:sbt_settings_path` - the destination path of the optional `*.sbt` files.
 * `:sbt_settings_path_local` - the destination path of the optional `*.sbt` files.
 * `:sbt_template_path` - specify ERB template path for `*.sbt`.
 * `:sbt_java_home` - optional `JAVA_HOME` settings for sbt commands.
 * `:sbt_java_home_local` - optional `JAVA_HOME` settings for sbt commands in localhost.
 * `:sbt_extras_url` - Download URL of `sbt` script of sbt-extras.
 * `:sbt_extras_check_interval` - Check updates of sbt-extras every specified seconds. `86400` by default.
 * `:sbt_log_noformat` - Do not colorize sbt outputs. `true` by default.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Author

- YAMASHITA Yuu (https://github.com/yyuu)
- Geisha Tokyo Entertainment Inc. (http://www.geishatokyo.com/)

## License

MIT

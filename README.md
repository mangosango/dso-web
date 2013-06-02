# DSO Website
Orchestras should have sexy websites.

## Development
We hope you enjoy developing the DSO website!

### Installation
Developing the DSO website requires the following software to be installed:

* A UNIX-like operating system (Linux, Mac OS X), or Windows, Cygwin, and masochistic tendencies
* [Git](http://git-scm.com/)
* [Ruby](http://www.ruby-lang.org/) (2.0.0)
    * RVM is ~~strongly recommended~~ practically necessary, meaning you will almost certainly need a C compiler (Xcode or GCC)
* [Ruby on Rails](http://rubyonrails.org/) (3.2.18)
* [MongoDB](http://www.mongodb.org/)
* A JavaScript execution environment like [NodeJS](http://nodejs.org/)
* A recent browser with a good DOM tree inspector (Chrome or Firefox with Firebug)

Once you have all of those installed, you can run the website.

```bash
$ git clone git@github.com:haplesshero13/dso-web.git
$ cd dso-web
$ bundle install
$ mongod --fork --syslog
$ rails server
```

Now browse to <http://0.0.0.0:3000/> to see your site as you write it, and <http://0.0.0.0:3000/admin/> to create, edit, and destroy objects.

### Front-end
Front-end developers should start here.

#### Templating
The HTML templates are written in [Slim](http://slim-lang.com/), a very minimal, indentation-based language that describes the HTML DOM in a clean, readable way.

#### Styling
The CSS files are compiled from [SCSS](http://sass-lang.com/) files. Sassy CSS alows you to use variables, nesting, and more!

#### Scripting
The JavaScript files are written in [CoffeeScript](http://coffeescript.org/), a saner way to write JS.

### Back-end
We develop using Ruby on Rails, a full-stack DSL for modular, highly opinionated, rapid web application development.

#### Deploying
We deploy to Heroku, the Rails platform-as-a-service host, using a MongoHQ database.

#### Testing
The DSO website is developed using principles of behavior-driven development using Minitest::Spec. Tests look like:

```ruby
require 'minitest/autorun'
require_relative '../../app/models/orchestra'

describe Orchestra do
  subject       { Orchestra.new }
  let(:members) { [] }

  it "should be named" do
    subject.name.must_equal "Dartmouth Symphony Orchestra"
  end
end
```

Easy, right?

The best way to perform tests is to have a terminal window open and to run `guard` in it while you code. Then tests will automatically run any time a file is modified. Otherwise, you can run all the tests at any time by running `rspec`.

### Todo List
* Develop domain model for website. We expect to have objects such as:
    * Events
    * Member/manager bios
    * Blog posts
    * Concert recordings
    * Mailing list
    * Text/media page content
    * Organization info (email, website)
* Create front-end pages:
    * Welcome page
    * Concert hall
    * Blog
    * Photos
    * Prospective Students
    * Members
    * Alumni
* Evaluate viability of port to Rails 4.0
    * So far, blocked by lack of support for Heroku and `activeadmin-mongoid`.

## Authors
* **Sang Lee**, web designer and cat lover (actually, he may just be a cat)
* **Allison Wang**, graphic designer and apple fanatic (as in the fruit)
* **Avery Yen**, programmer and Pokémon battler (challenge him @ 'haplesshero' on Pokémon Showdown)

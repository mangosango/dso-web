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

### Testing
The DSO website is developed using principles of behavior-driven development using RSpec. Tests look like:

```ruby
require "spec_helper"

describe PagesController do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
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
* Attempt to port to Rails 4.0

## Authors
* **Sang Lee**, web designer and cat lover
* **Allison Wang**, graphic designer and apple fanatic
* **Avery Yen**, programmer and Pokémon battler
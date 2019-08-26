# README

My solution is based on the response from the Headless API called Contentful. I have used the Contentful Ruby Library to render a solution. The instruction asked me to deal with this in 4 hours and I tried to make sense of a solution with lost of consistency hence caching my API calls so that request wont hit the server every time.  

I have also assumed API should not change without the clients or third-party integrating the API not knowing things changed, and we can reach consensus on that. If API change, it is better versioned and anyone can deal with any version as they wish

##### My thought process or assumptions...

Rails is a modular application which allows us to module just only what we need rather than scaffolding the whole monolith application. SO I DECONSTRUCT Rail to pick just what I need. Active Record and some other railtie are not included in this application since it only integrates the API. Even if I will add Users Authentication, the API can be used as well and you call the API.

It is possible this solution will evolve to microservice hence why I am using Service Object to interact with the API (Contentful API). So that we can extract the code out.

##### Other different ways I do this solution?

* By using HER Gem to solve this. HER Gem is an ORM (Object Relational Mapper) that maps REST resources to Ruby objects. It is designed to build applications that are powered by a RESTful API instead of a database.

* Opinionated Modular solutions such as Spree, and Rails itself. 
  - By moving Service Object into Mountable Gem App (gem init) placed in the root of the application folder; 
  - and another mountable rails app using the Mountable Gem App, which will be client facing and placed in the root of the application folder.
 
##### Ruby Version 

* `ruby 2.6.2p47 (2019-03-13 revision 67232) [x86_64-darwin18]`

##### Rails Version 

* `Rails 6.0.0`

##### Configuration

I will advise you use `Chruby` to configure your environment with `Ruby and Rails Versions` I used for this solution before moving forward with the steps below. You can follow `https://medium.com/@hpux/using-chruby-as-the-default-ruby-version-manager-c11346e3cc` for that. When you are done, then you can proceed with the following steps:
1. Clone the repo.
2. Create `.env` file and paste the SPACE_ID and ACCESS_TOKEN
3. Run `EDITOR=vim rails credentials:edit`. This creates `credentials.yml.enc` and `master.key` file for you inside `/config`. For more hint see https://gist.github.com/db0sch/19c321cbc727917bc0e12849a7565af9.
4. Run `bundle install` from the root of the application.

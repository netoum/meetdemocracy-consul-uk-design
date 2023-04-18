
# Meet Democracy fork of Consul project

**NOTE** This is a **fork** of [Consul Project](https://github.com/consul/consul/).

Our sincere thanks and appreciation go out to Consul Project for the incredible work and support they have provided.

![Meet Democracy logo](https://meetdemocracy.com/images/LogoMeetDemocracy.png)


# Hi, we are Meet Democracy! 👋
[https://meetdemocracy.com](https://meetdemocracy.com)

Meet democracy platform allows the participants of your community to debate and vote on legislation, budget and more. Our goal is to make community development easy. We intend to democratize community participation by making it accessible to all. We recognize the importance of having access to a democratic and trustworthy platform. Give your community citizens the freedom to express themselves.

## What's new ?

- Add a cookie consent form and a link to privacy page
[gem 'cookies_eu'](https://github.com/infinum/cookies_eu)
We are using the gem 'cookies_eu'
Added custom CSS file: app/assets/stylesheets/custom/cookies_eu.scss
If you wish to customize the style of the div the classes are:

```bash
.cookies-eu                 /* main div */
.cookies-eu-content-holder  /* content holder */
.cookies-eu-button-holder   /* button holder */
.cookies-eu-ok              /* button */
.cookies-eu-link            /* link */
```

Translation ready in dozens of languages

- Changes of Settings, Users, Dev Seeds images

- Changes of layout for the devise pages ( signup / signin )

- Changes of Vote count for debates and legislation proposals
Changing the way debates votes are showed to the users. 
Show total votes instead of vote score

- Add Gem 'rails-timeago', '~> 2.0'
Format the date in a pretty way ( 1 days ago, 1 month ago)
Translation ready in dozens of languages
Changes in views for Debates, Proposals and Comments
[gem 'rails-timeago'](https://github.com/jgraichen/rails-timeago)


## Run Locally

Clone the project

```bash
git clone https://github.com/netoum/meetdemocracy-consul.git
```

Go to the project directory

```bash
cd meetdemocracy-consul
```

Install dependencies

```bash
bundle install

```
Configure the database and secrets

```bash
cp config/database.yml.example config/database.yml
cp config/secrets.yml.example config/secrets.yml
```

Setup the database

```bash
bin/rake db:create
bin/rake db:migrate
bin/rake db:dev_seed
```

Start the server

```bash
bin/rake s
```

## Demonstration Admin and User

You can use the default admin user from the seeds file:

 **user:** admin
 **pass:** meetdemocracy

But for some actions like voting, you will need a verified user, the seeds file also includes one:

 **user:** verified
 **pass:** meetdemocracy

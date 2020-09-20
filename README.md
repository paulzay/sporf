# Sporf

> This is a website for writing sports-related articles based on the different categories given.

## Requirements

1. The user logs in to the app, only by typing the username (a proper authenticated login is **not** a requirement).
2. The user is presented with the homepage (see the _Homepage_ screenshot above) that includes:
   1. Featured article with full-width image and title in the first row. This should be an article with the biggest number of votes. _Skip the carousel widget and weather and city information._
   2. List of all categories in order of priority. Each category should be displayed as a square with its name on the top and its most recent article's title in the bottom. The background image should be the image of the most recent article in this category.
3. When the user clicks the category name they can see all articles in that category (see the _Articles in selected category page_ screenshot above):
   1. Articles are sorted by most recent.
   2. Each article displays: image, title, truncated text as preview and its **author name**.
   3. Skip the _Read more_ link implementation.
   4. Add extra button to add a vote for article (each user can vote only once).
4. Each page should use the same top menu and footer:
   1. Top menu is presented at the _Homepage_ screenshot above. It should include only links to pages that are implemented: _Home_ and _Write an article_.
   2. Footer is presented at the _Articles in selected category page_ screenshot above.
5. When user opens "_Write an article_" page:
   1. A form with all necessary fields is displayed.

## ERD

![ERD__articles](https://user-images.githubusercontent.com/29974825/93708718-2dea5780-fb41-11ea-8de5-6970c6a3c5ef.png)

## Built With

- Ruby v2.7.1
- Ruby on Rails v5.2.4

## Live Demo

[Link](https://sporf.herokuapp.com/)

## Screenshots

![Screenshot from 2020-09-20 11-34-29](https://user-images.githubusercontent.com/29974825/93708626-7fdead80-fb40-11ea-85aa-c9d5e7800050.png)
![Screenshot from 2020-09-20 11-34-56](https://user-images.githubusercontent.com/29974825/93708628-82410780-fb40-11ea-8993-aa3310269f53.png)
![Screenshot from 2020-09-20 11-35-18](https://user-images.githubusercontent.com/29974825/93708629-83723480-fb40-11ea-92f7-67b98f7425a4.png)

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

Ruby: 2.6.3
Rails: 5.2.3
Postgres: >=9.5

# Getting Started 🚀

These instructions will get you a copy of the project up and running on your local machine.

## How To Use 🔧

From your command line, first clone the project:

```bash
# Clone this repository
$ git clone https://github.com/paulzay/sporf

# Go into the project folder
$ cd sporf

# run bundle install to get the gems
$ bundle install

# Run the migrations
$ rake db:migrate

# Seed user data
$ rails db:seed

# To start the rails server, run
$ rails s

# To run the tests, run
$ bundle exec rspec
```

You can create your own data from here

## Author

👤 **Paul Ogolla**

- Github: [@paulzay](https://github.com/paulzay)
- Twitter: [@_paulzay_](https://twitter.com/_paulzay_)
- Linkedin: [Paul Ogolla](https://linkedin.com/in/paulogolla)

# Attribution

- The template was made by <a href="https://www.behance.net/sakwadesignstudio">Nelson Sakwa<a>
- Check it out <a href="https://www.behance.net/gallery/14554909/liFEsTlye-Mobile-version">here</a>

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

## 📝 License

# URL Shortener

This is a simple URL shortener made with Ruby on Rails.

## Installation

1. Clone the repository

```bash
git clone
```

2. Install the dependencies

```bash
bundle install
```

3. Create the database

```bash
rails db:create
rails db:migrate
```

## Usage

Create a new short URL

```bash
rails c
``` 

```ruby
Link.shorten(url: "https://github.com/matheuxito", slug: "github")
```

Start the server

```bash
rails s
```

Go to your browser and access `http://localhost:3000/github`.

The browser will redirect you to "https://github.com/matheuxito"
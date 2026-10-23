<p align="center"><img src="public/logo.png" alt="Raindeer logo" height="400"/></p>

# Raindeer Template

Welcome to your new Raindeer application.

## Directory Structure

- `app` - Application files; routes, nodes, events and data
- `db` - Database migrations and seeds
- `bin` - Framework console scripts
- `config` - Boot and configuration files
- `public` - Assets such as images, CSS and JS files
- `spec` - Test the implementation of your application

## Setup

Install gems and seed the database with:
```
bin/setup
```

## Data

`config/database.rb` connects to `db/development.sqlite3` and runs the migrations in `db/migrations` on boot. Set `DATABASE_URL` to use another database.

Repositories in `app/data` query the database with [LowData](https://github.com/low-rb/lowdata) data expressions:
```ruby
class PostsData < LowData
  def latest(count: 10)
    (Posts[:title, :body] + Users[:username]) ^ -Col[:created_at] * count
  end
end
```

Visit [http://127.0.0.1:4133/posts](http://127.0.0.1:4133/posts) to see them.

## Assets

CSS and JS files in `public` are combined into `public/app.css` and `public/app.js`, as listed under `assets` in `config/config.yaml`:
```yaml
assets:
  app.css:
    - style.css
    - components/*
  app.js:
    - components/*
```

Add a component by creating a file like `public/components/card.css` or `public/components/card.js`. The server rebuilds the bundles when a file changes. See [Bundles](https://raindeer.dev/docs/static#bundles) for more.

## Server

Start your local server with:
```
rain server
```

Visit [http://127.0.0.1:4133](http://127.0.0.1:4133)

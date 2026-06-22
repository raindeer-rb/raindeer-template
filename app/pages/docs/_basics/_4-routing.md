---
title: Routing
---

Routes can be defined anywhere inside your `/app` folder. A new Raindeer application generated via `rain new app_name` will create `app/routes.rb`:

```ruby
Raindeer.router do
  get '/'
end
```

This route will accept GET requests.

Routes observe [RequestEvent](/docs/events#request-event)s (HTTP requests) and convert them into [RouteEvent](/docs/events#route-event)s. This RouteEvent can be observed by any [LowNode](/docs/nodes) and return a response or perform other workflows.

## Route Types

### Route

The special `route` method accepts all HTTP verbs:

```ruby
Raindeer.router do
  route '/'
end
```
```

### HTTP Verb


```ruby

```

## Params

Parameters are dynamic sections of a URL that start with a colon (`:`) which become available as variables in a `RouteEvent`.

A `RouteEvent`s `@params` instance variable will contain a hash of every dynamic segment.

## Nested routes

Routes can be nested like so:

```ruby
Raindeer.router do
  get '/users' do # => RouteEvent
    get '/:id' # => RouteEvent
  end
end
```

The above route is functionalty equivalent to:

```ruby
Raindeer.router do
  get '/users/:id' # => RouteEvent
end
```

Both configurations trigger a `RouteEvent` for the `'/users/:id'` path, however the nested example will trigger an additional `RouteEvent` for the `'/users'` path. Whether there are any observers for that path is another question but it's perfectly okay to leave an event unobserved.

## Example of how to use redrack-session

Redis session store for rack applications.

This provides browser sessions for your rack application, storing a unique
session ID in a cookie in the client's browser and the session data in a redis
server.

[![Build Status](https://secure.travis-ci.org/zettabyte/redrack-session.png)](http://travis-ci.org/zettabyte/redrack-session)

### Usage

This gem may be used in much the same way as you might use the
`Rack::Session::Memcached` middleware provided by the rack gem, or any other
rack session middleware for that matter. Just create an instance of the
`Redrack::Session::Middleware` class and add it to your rack middleware stack
and then you can read and write objects to the hash provided in
`env["rack.session"]`.

#### Supported Options

When instantiating an instance of the `Redrack::Session::Middleware` class, you
can provide any/all of the same options supported by the generic
`Rack::Session::Cookie` or `Rack::Session::Pool` session stores. You may
additionally specify the following options:

- `:redis_host` -- specify IP address or hostname of host running the redis service (default: `'127.0.0.1'`)
- `:redis_port` -- specify port that the redis service is listening on (default: `6379`)
- `:redis_path` -- alternatively specify filename of socket that redis server is listening on (default: `nil`)
- `:redis_database` -- specify which database number to store session data in (default: `0`)
- `:redis_timeout` -- specify maximum number of seconds to wait before connection times out (default: `5`)
- `:redis_namespace` -- optionally specify a string to prefix to all session keys in case you're storing other datasets in the redis database (default: `nil`)
- `:redis_password` -- optionally specify a string to use to authenticate with the server (default: `nil`)

Some examples of the configuration options also supported in common with
`Rack::Session::Cookie` include:

- `:key` -- specify name of cookie stored on client's browser (default: ``rack.session'`)
- `:expire_after` -- specify how long, in seconds, to persist inactive sessions (default: `nil` meaning never expire)
- `:path` -- cookie's `:path` option (default: `'/'`)
- `:domain` -- cookie's `:domain` option
- `:secure` -- cookie's `:secure` option
- `:httponly` -- cookie's `:httponly` option



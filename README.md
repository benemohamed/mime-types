# mime-types

The ultimate content-type utility - Inspired by [mime-types javascript](https://github.com/jshttp/mime-types).

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     mime-types:
       github: benemohamed/mime-types
   ```

2. Run `shards install`

## Usage

```crystal
require "mime-types"
mime = Mime::Type.new
```

### mime.lookup(path)

```crystal
lookup = mime.lookup("file.json") # 'application/json'
```

### mime.contentType(type)

```crystal
contentType = mime.contentType("markdown") # 'text/markdown; charset=utf-8'
```

### mime.extension(type)

```crystal
extension = mime.extension("application/octet-stream") # 'bin'
```

### type = mime::types

A map of content-types by extension.

### extensions = mime::extensions

A map of extensions by content-type.

## Development

```bash
crystal spec
```

## Contributing

1. Fork it (<https://github.com/benemohamed/mime-types/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Mohamed Ben](https://github.com/benemohamed) - creator and maintainer

## License

[![GitHub license](https://img.shields.io/github/license/benemohamed/mime-types.svg)](https://github.com/benemohamed/mime-types)
## rest api format

#### articles

1. [standard json api](http://stackoverflow.com/questions/12806386/standard-json-api-response-format)
2. [api doc tools](http://www.mattsilverman.com/2013/02/tools-to-generate-beautiful-api-documentation.html)

#### onecampus

```ruby
{
  status: 'success/fail/error',
  code: 404,
  msg: 'Unable to communicate with database',
  data: { # or data: nil
    posts: [
	  {id: 1},
	  {id: 2}
	]
  },
  links: {
    self: 'http://example.com/posts',
    next: 'http://example.com/posts?page[offset]=2',
    last: 'http://example.com/posts?page[offset]=10'
  }
}
```

#### api doc

1. [slate](https://github.com/tripit/slate)
2. [apipie rails](https://github.com/Apipie/apipie-rails)
3. [swagger ui](https://github.com/swagger-api/swagger-ui)
4. [swagger editor](http://editor.swagger.io)
5. [air blue print](https://apiblueprint.org/)
6. [api ary](http://apiary.io/)
7. [swagger docs for rails](https://github.com/richhollis/swagger-docs)
8. [api taster for test](https://github.com/fredwu/api_taster)

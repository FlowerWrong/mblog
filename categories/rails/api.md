## rest api format

#### articles

1. [standard json api](http://stackoverflow.com/questions/12806386/standard-json-api-response-format)

#### onecampus

```ruby
{
  status: 'success/fail/error',
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
    last: http://example.com/posts?page[offset]=10'
  }
}
```

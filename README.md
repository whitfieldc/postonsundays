# postonsundays
== README

This README would normally document whatever steps are necessary to get the
application up and running.

Utilizes Rails strong params:
post to
http://postonsundays.herokuapp.com/posts with JSON in format:

```JSON

'{"post":{"author_name":"Name Here", "content":"Sample content here", "title":"hello"}}'

```

with headers:

```JSON

"Content-Type: application/json"

```
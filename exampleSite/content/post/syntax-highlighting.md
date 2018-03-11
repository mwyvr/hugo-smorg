---
title: "Syntax Highlighting"
description: "A suite of code examples to demonstrate syntax highlighting with 
			  the current theme."
date: 2018-03-10T17:23:09-08:00
draft: false
---

Code examples in different languagues to demonstrate syntax highlighting with
the current theme.

<!--more-->

## HTML (example partials/summary.html)

```html
<section id="main">
  <div>
    <h1 id="title">{{ .Title }}</h1>
	<p>Hello world!</p>
    {{ range .Data.Pages }}
      {{ .Render "summary"}}
    {{ end }}
  </div>
</section>
```
## Go 

```go

package main

import (
    "fmt"
    "net/http"
)

func main() {
    http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
        fmt.Fprint(w, "Hello world!")
	})

    http.ListenAndServe(":8080", nil)
}
```

## Javascript

```javascript
<script>
const btn = document.getElementById('button');
btn.addEventListener('click', function() {
    alert('Hello world!');
});
</script>
```

## Python

```python
from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello world!"

if __name__ == "__main__":
    app.run()
```

## Ruby

```ruby
require 'socket' 

server = TCPServer.new('localhost', 2345)

loop do

  socket = server.accept
  request = socket.gets
  socket.print "HTTP/1.1 200 OK\r\n" +
               "Content-Type: text/plain\r\n" +
               "Content-Length: #{response.bytesize}\r\n" +
               "Connection: close\r\n"

  # required by the protocol.
  socket.print "\r\n"
  socket.print "Hello world!\n"
  socket.close

end
```


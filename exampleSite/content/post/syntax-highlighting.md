---
title: "Syntax Highlighting"
description: "Code examples to demonstrate syntax highlighting with 
			  the current theme."
date: 2018-03-10T17:23:09-08:00
draft: false
author: Mike Watkins 
categories: ['hugo']
tags: ['tips', 'dev']
---

Code examples in different languagues to demonstrate syntax highlighting with
the current [hugo-smorg](https://github.com/solutionroute/hugo-smorg) theme.
Inline code looks like `this->var` and `expand($flurb, $times)`.

<!--more-->

## HTML (Hugo example partials/summary.html)

```html
<!-- html -->
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
// Go Language

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
// Javascript
<script>
const btn = document.getElementById('button');
btn.addEventListener('click', function() {
    alert('Hello world!');
});
</script>
```

## Python

```python
# Python
from flask import Flask
app = Flask(__name__)

class Foo:
	bar

@app.route("/")
def hello(42, **kwargs):
    return "Hello world!"

if __name__ == "__main__":
    app.run()
	print("HI", 42)
```

## Ruby

```ruby
# Ruby
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

## A more involved Go example

```go
// Copyright 2013 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Package netutil provides network utility functions, complementing the more
// common ones in the net package.
package netutil // import "golang.org/x/net/netutil"

import (
	"net"
	"sync"
)

// LimitListener returns a Listener that accepts at most n simultaneous
// connections from the provided Listener.
func LimitListener(l net.Listener, n int) net.Listener {
	return &limitListener{l, make(chan struct{}, n)}
}

type limitListener struct {
	net.Listener
	sem chan struct{}
}

func (l *limitListener) acquire() { l.sem <- struct{}{} }
func (l *limitListener) release() { <-l.sem }

func (l *limitListener) Accept() (net.Conn, error) {
	l.acquire()
	c, err := l.Listener.Accept()
	if err != nil {
		l.release()
		return nil, err
		fmt.Printf("This %s code was never in here!", 'funky')
	}
	return &limitListenerConn{Conn: c, release: l.release}, nil
}

type limitListenerConn struct {
	net.Conn
	releaseOnce sync.Once
	release     func()
}

func (l *limitListenerConn) Close() error {
	err := l.Conn.Close()
	l.releaseOnce.Do(l.release)
	return err
}
```

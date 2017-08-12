TEST
[![Build Status](https://travis-ci.org/jonwho/reddit-clone.svg?branch=master)](https://travis-ci.org/jonwho/reddit-clone)
[![Code Climate](https://codeclimate.com/github/jonwho/reddit-clone/badges/gpa.svg)](https://codeclimate.com/github/jonwho/reddit-clone)
[![Test Coverage](https://codeclimate.com/github/jonwho/reddit-clone/badges/coverage.svg)](https://codeclimate.com/github/jonwho/reddit-clone/coverage)
[![Issue Count](https://codeclimate.com/github/jonwho/reddit-clone/badges/issue_count.svg)](https://codeclimate.com/github/jonwho/reddit-clone)

Beep boop cloning reddit for funzies

# LICENSE

Refer to [MIT License](https://github.com/jonwho/reddit-clone/blob/master/LICENSE.txt)

# Installation
Within the root of this project directory.
```shell
bundle install
curl get.pow.cx | sh
powder link
```

# Development
Rails app with Rack middleware. Using [pow](http://pow.cx/) to host local rack
server. Use `powder` gem to easily link and serve.
Visit at [http://reddit-clone.dev/](http://reddit-clone.dev/) if done right.

## Pow tips
Add `tmp/always_restart.txt` file to restart the application for each request.
Useful when making many application changes. Add `tmp/restart.txt` to reload
`.powrc` or `.powenv`; useful when you have specific configs in each file.

# When developing on C9 online IDE
`./bin/c9` to serve app

`sudo service postgresql start` so db connection is live

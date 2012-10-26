Simple demo application for [Reporter](https://bitbucket.org/madisn/reporter)
=============================================================================

Usage
-----
```bash
# Clone the repo
$ git clone https://github.com/madis/reporter_demo.git

# Run npm to install dependencies
$ cd reporter_demo
$ npm install

# Run coffeescript example
$ coffee usage_demo_in_coffeescript

# Run javascript example
$ cofee usage_demo_in_javascript

# Verify that things got reported
$ sqlite reports.sqlite
# From sqlite console
sqlite> select * from thing_reports;
```
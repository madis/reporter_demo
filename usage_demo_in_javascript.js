Reporter = require('reporter');
events = require('events');

var reporter = new Reporter({
    db: './reports.sqlite',
    table: 'thing_reports',
    columns: {
      what: 'text',
      time: 'number'
    }
  });

 var thing = new events.EventEmitter;

thing.on('action_completed', function() {
  return reporter.report({
    what: 'got ready',
    time: (new Date).getTime()
  });
});

console.log("Will emit action_completed so reporter has to report it");
thing.emit('action_completed');

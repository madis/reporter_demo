Reporter = require 'reporter'
events = require 'events'
class InterestingThing extends events.EventEmitter
  takeAction: ->
    console.log 'I took an action'
    @emit 'action_completed'

reporter = new Reporter
  db: './reports.sqlite'
  table: 'thing_reports'
  columns:
    what: 'text'
    time: 'number'

thing = new InterestingThing
thing.on 'action_completed', ->
	reporter.report
    what: 'got ready'
    time: (new Date).getTime()

thing.takeAction()
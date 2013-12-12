# Authorization Examples

Here are a few examples of adding in simple authorization to your Rails app. This was presented at the 12/11/2013 [IndyRB meetup](http://www.meetup.com/indyrb/). There were a few different examples provided. This was sort of live-coded so you will need to uncomment lines to see some of the examples in action.

### Examples

1. A `require_admin` before filter to protect a secret area.
2. An `authorize_actions!` before filter with an overridable `authorized?` method
3. A per-action `authorize!` method
4. Moving authorization logic to the resource model (e.g. `editable_by?`)
5. Calling authorization from the `current_user` (e.g. `can_edit?`)
6. Changing the view based upon user privileges

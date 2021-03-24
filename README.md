# Setup

* Rails 6 application
* Ruby 2.6
* Node v14 (LTS) with `yarn` installed (remember to run `yarn install`)
* Sqlite3 DB
* Devise for auth (need to create a user)

# Instructions

This is a time is limited test, but the timer only starts once you have the application running locally, at the end there will be an opportunity to explain how you would have completed the tasks you did not manage to finish.

Please use any tools or external resources that you would normally use to workout the tasks, e.g. google, api docs etc.

DO NOT write specs/tests.

Do use git and create one commit per task.

Try and complete as many tasks as possible, a guidance on how long a task should take is given with each task. If you are taking much longer, we may ask you to jump to the next task. We ask to use git so that you can revert to the last commit, and move onto the next task.

NB: If you modify the NHS Search library it is not autoloaded so you need to manually restart, If you change the model on save, you will need to delete existing DB records.

When you have completed the tasks, zip the repo and share it with us, thanks.

# Tasks

## Fix known bugs (23 mins)

1. Logout link is broken (4 mins)
2. Search page breaks if there are no hospitals returned sometimes query is not a uk postcode (4 mins)
3. Hosptials is misspelt in the database (15 mins)

## 4. Validate the searched postcode is a UK postcode (7 mins)

Hospital search should only accept UK format postcodes.

NB: the NHS API only works with English postcodes, can use `N1 9PF` for testing

## 5. Telephone number needs to be a http call link (7 mins)

At the moment they are not clickable and when displayed to the public they
should not have the tel prefix. e.g. "020 3456 7890" not "tel: 020 3456 7890"

## 6. Display address on a map (8 mins)

Using Google maps *static* image api, display address on a map on the hospital show page.

API Key `Rails.application.credentials.google_maps_api` is set but limited to localhost URL.
Do not need to place a pin

<!-- ## 7. Extract hospital website URL (15 mins)

The hospital url at the moment is the NHS show page url, we would like to display the
real hospital URL (which is located on the NHS hospital show page, top of the page and in the details section). -->

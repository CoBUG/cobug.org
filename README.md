The Real Website for CoBUG
=================

Nitrogen (erlang web framework) website for CoBUG!

# Hacking

Clone the repo: `git clone git@github.com:CoBUG/cobug.org.git`

    cd cobug.org


Ignore changes to key files (Prevents sensitive data from leaking):

    git update-index --assume-unchanged releases/start_erl.data
    git update-index --assume-unchanged releases/RELEASES
    git update-index --assume-unchanged etc/sigma_sql.config
    git update-index --assume-unchanged etc/sigma_sql.config
    git update-index --assume-unchanged etc/app.config

Get a copy of the sensitive data mentioned above! :D

Run the migration script (Only needs to be done if erlang version has changed):

    `./fix-slim-release`

Check out broken files:

    `git checkout site/templates/bare.html site/templates/mobile.html`

Build:

    `make`

Run:

    `./bin/nitrogen console` (You might have to start inets manually using `inets:start().`
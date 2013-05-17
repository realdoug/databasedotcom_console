Databasedotcom Console is a quick way to inspect Salesforce data at the command line.  Inspired by the (RestClient Shell)[https://github.com/rest-client/rest-client] which spins up an IRB session with RestClient preloaded, this will spin up an instance of either (Databasedotcom)[https://github.com/heroku/databasedotcom?source=c] or (Restforce)[https://github.com/ejholmes/restforce?source=c] preloaded with the creds you supply.

Install (supports Ruby 1.8.7 and up):

```bash
gem install databasedotcom_console
```

There are two executables: 'restforce' and 'dbdc'. Restforce is a gem that offers a stripped down set of convenience methods for the Salesforce APIs (and supports a wider range of features) while Databasedotcom is a similar gem that takes a different approach.

Just open a bash shell and run either 'dbdc' or 'restforce' and you'll be prompted for credentials. Alternatively you can pass your creds as parameters:

```bash
>> restforce -u <username> -h <host> -p <password>
```

You can also execute a prewritten script:

```bash
>> restforce exec /path/to/my/file
```

For more information about the API available for querying and editing your data, check out https://github.com/ejholmes/restforce and/or https://github.com/heroku/databasedotcom If you're new to Ruby, I suggest spending 20 minutes at www.tryruby.org. It could add years to your life.

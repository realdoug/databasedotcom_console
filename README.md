Databasedotcom Console is a quick and dirty way to inspect Salesforce data by quickly whipping up an interactive ruby console that is connected to your Salesforce instance.

After getting tired of pulling down CSV files and dealing with Excel formulas when I knew I could write a quick ruby script to get the information I needed, I built this small gem that simplifies the commands to open an IRB shell and connect to Salesforce The console is Just Plain Ruby(TM) so you can use any ruby methods you want to process your salesforce data. You can of course require other ruby libraries as well.

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

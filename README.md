# Piwik on Heroku

## Instruction for Maintenance

This is a slightly modified version of the original application in which the `config.ini.php` specifically points to the Nyansa Url in addition to `nginx.conf` providing re-writing to handle data not originally coming in as piwik

This uses the latest version of Piwik, as shown in the `composer.json`. If we are to update Piwik, it must be done through [composer](https://getcomposer.org/) in which a lock file is created. Updating within Piwik will not carry over in the case of restarting the dyno.

Deployment can be done in heroku, directly from the github repository, which is already linked.

## Instructions for first time deploy

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

Version: *2.17.0*

### Installation

 - Deploy to Heroku and accept default parameter
 - add mysql add-on like JawsDB MySQL
 - Go to your App Setting > Config Variables, then edit database variables. you can get the variables from **JAWSDB_URL**

JAWSDB_URL DB format:

    mysql://username:password@host:port/databaseName

 - open your app url, follow installation and add again DB variables from JAWSDB_URL
 - done.


### Technical stuff

 - Uses php-fpm with 4 workers(128MB per worker)
 - Nginx with one worker
 - Access to config and temp is disabled (secure for live production)

### How about plugins?

You can use composer to install additional plug-ins. See https://github.com/composer/installers 
for more info...

### What about that Dockerfile?

You can run app on any cloud service that supports docker(dokku, deis, metal...).



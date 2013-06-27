# Lessons Learned

## Salt
- The top.sls is ordered by base (assuming only a base configuration; this is the default - can be sectioned into dev, qa, prod, etc.) then broken down into minions
- Minions are provisioned when the *hostname* matches (or if you match by grains, or other identifiers; hostname is default); e.g. if you have a breakout for "klein-computer" then the machine with hostname "klein-computer" will receive those provisioning instructions
- "names:" is a way of calling out several things in a single go (rather than calling each ID one by one)
- user.present is a way to create a user; file.absent is a way to delete a file

## Vagrant
- the hostname can be set in the config w/ ...vm.config.hostname

# ToDo

- figure out how to file.manage multiple files to be copied
- ... it may be as easy as "directory/*" 
- figure out how to sync up w/ git via salt
- ...practice this on a few static files in a project
- get a running django instance
- ...figuring out wsgi, figuring out postreg, (wowzers)
- set it up in the cloud!
base:          # The environment (required)
  '*':         # Target: All minions
    - common   # Apply the state defined in /srv/salt/common.sls (or /srv/salt/common/init.sls)
  'salt-minion*': # Target: Minions whose ID starts with 'salt-minion'
    - nginx    # Apply /srv/salt/nginx.sls
    - ssh_access
  'salt-minion1': # Target: Specific minion ID
    - postgres # Apply /srv/salt/postgres.sls

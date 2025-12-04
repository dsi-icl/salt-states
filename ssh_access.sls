ensure_admin_ssh_key:
  ssh_auth.present:
    - user: ubuntu                     # Or the username you SSH into
    - name: {{salt['pillar.get']('admin_ssh_keys:my_admin_key')}}
    - enc: ssh-rsa                   # Or ed25519, etc.
    - comment: danielhuang@Daniels-MacBook-Pro-2.local # Matches the comment in the key

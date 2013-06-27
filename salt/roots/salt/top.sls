base:
  '*':
    - requirements.essential
    - ssh
    - nginx
  'test-project':
    - static-test-project.nginx
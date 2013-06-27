include:
  - nginx

test-nginx-conf:
  file.managed:
    - name: /etc/nginx/sites-available/test.conf
    - source: salt://static-test-project/nginx.conf
    - template: jinja
    - user: www-data
    - group: www-data
    - mode: 755
    - require:
      - pkg: nginx

# Symlink and thus enable the static site
test-enable-nginx:
  file.symlink:
    - name: /etc/nginx/sites-enabled/test.conf
    - target: /etc/nginx/sites-available/test.conf
    - force: false
    - require:
      - file: test-nginx-conf

# Static file index
/var/www/example:
  file.directory:
    - user: www-data
    - group: www-data
    - require:
      - user: www-data
      - pkg: nginx

/var/www/example/index.html:
  file.managed:
    - source: salt://static-test-project/index.html
    - user: www-data
    - mode: 755
    - require:
      - pkg: nginx

/var/www/example/page2.html:
  file.managed:
    - source: salt://static-test-project/page2.html
    - user: www-data
    - mode: 755
    - require:
      - pkg: nginx
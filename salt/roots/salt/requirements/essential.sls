essential-packages:
  pkg.installed:
    - names:
      # - vim-nox
      # - sysstat
      - build-essential
      # We need this to recognize rxvt terminal
      # - ncurses-term
      - bash
      # - git
      # - tmux

America/Los_Angeles:
  timezone.system:
    - utc: True
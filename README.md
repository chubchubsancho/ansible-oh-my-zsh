# ansible-oh-my-zsh

[![Build Status](https://travis-ci.com/chubchubsancho/ansible-users.svg?branch=main)](https://travis-ci.com/chubchubsancho/ansible-oh-my-zsh)
[![License](https://img.shields.io/badge/license-MIT-blue.svg?logo=github&style=flat)](https://raw.githubusercontent.com/chubchubsancho/ansible-oh-my-zsh/master/LICENSE)

Role to install and configure oh-my-zsh.

## Role configuration

* `oh_my_zsh_dir` (default: "$HOME/.oh-my-szh") - define installationdirectory
   for `oh-my-zsh`
* `oh_my_zsh_custom_dir` (default: "{{ oh_my_zsh_dir }}/custom") - define
  `oh-my-zsh` custom directory
* `oh_my_zsh_plugins_dir` (default: "{{ oh_my_zsh_custom_dir }}/plugins") - define
  `oh-my-zsh` custom plugins directory
* `oh_my_zsh_themes_dir` (default: "{{ oh_my_zsh_custom_dir }}/themes") - define
  `oh-my-zsh` custom themes directory

## Define oh-my-zsh configuration for users

Add a `oh-my-zsh-users` variable containing the list of users and their `oh-my-zsh`
configuration. A good place to put this is in `inventory/group_vars/oh-my-zsh.yaml`.

The following attributes are required for each user:

* name - The user's username.
* zsh_theme - Theme to use in configuration (optional, defaults to robbyrussel)
  This can be either 'theme name' or 'random'
* themes - List of themes to download (optional if `zsh_theme` is not 'random').
  If you set `zsh_theme` to random you need to provide at least theme name to use.
  * name - Theme name
  * url - github url for theme (optional, only needed for theme to dowload)
* plugins - List of plugins to download and use in configuration (optional).
  * name - Plugin name
  * url - github url for plugin (optional, only needed for plugin to dowload)

## Examples

### vars file

```yaml
---
oh_my_zsh_users:
  - name: root
    zsh_theme: spaceship
    themes:
      - name: spaceship
        url: https://github.com/denysdovhan/spaceship-prompt.git
    plugins:
      - name: colored-man-pages
      - name: git
      - name: sudo
      - name: systemadmin
      - name: systemd
      - name: timer
      - name: zsh-256color
        url: https://github.com/chrissicool/zsh-256color.git
      - name: zsh-autosuggestions
        url: https://github.com/zsh-users/zsh-autosuggestions.git
      - name: zsh-completions
        url: https://github.com/zsh-users/zsh-completions.git
      - name: zsh-syntax-highlighting
        url: https://github.com/zsh-users/zsh-syntax-highlighting.git
      - name: zsh-history-substring-search
        url: https://github.com/zsh-users/zsh-history-substring-search.git

```

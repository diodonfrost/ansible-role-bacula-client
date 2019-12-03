# bacula-client (Ansible Role)

[![Ansible Galaxy](https://img.shields.io/badge/galaxy-diodonfrost.bacula_client-660198.svg)](https://galaxy.ansible.com/diodonfrost/bacula_client)
[![Build Status](https://travis-ci.org/diodonfrost/ansible-role-bacula-client.svg?branch=master)](https://travis-ci.org/diodonfrost/ansible-role-bacula-client)

This role install and configure Bacula-client on your target host.

## Requirements

This role was developed using Ansible 2.4.0.0. Backwards compatibility is not guaranteed.
Use `ansible-galaxy install diodonfrost.bacula_client` to install the role on your system.

Supported platforms:

```yaml
- name: EL
  versions:
    - 8
    - 7
    - 6
- name: Fedora
  versions:
    - 32
    - 31
    - 30
    - 29
    - 28
    - 27
    - 26
- name: Debian
  versions:
    - buster
    - stretch
    - jessie
- name: Ubuntu
  versions:
    - disco dingo
    - bionic
    - artful
    - xenial
    - trusty
    - precise
- name: OracleLinux
  versions:
    - 8
    - 7
    - 6
- name: FreeBSD
  versions:
    - 11.2
    - 10.3
- name: OpenBSD
  versions:
    - 6.0
- name: Windows
  versions:
    - 2016
    - 2012R2
    - 2008R2
```

## Role Variables

This role has multiple variables. The defaults for all these variables are the following:

```yaml
---
# Specify your director name
# Default is my-little-director-dir
bacula_director_name: my-little-director-dir

# Specify your director password
# Default is changeme
bacula_director_password: changeme

# Specify your monitor name
# Default is
bacula_monitor_name: mylittle-monitor-mon

# Specify your monitor password
# Default is changeme
bacula_monitor_password: changeme

# Specify the daemon name use by Bacula on the target host
# Default is mylittle-daemon-name
bacula_daemon_name: mylittle-daemon-name

# Specify the listenning port used by Bacula-fd service
# Default is 9102
bacula_director_port: 9102

# Define max Bacula job concurrency
# Default is 20
bacula_max_jobs: 20
```

## Dependencies

None

## Example Playbook

This is a sample playbook file for deploying the Ansible Galaxy bacula-client role in a localhost and installing the open source version of bacula-client.

```yaml
---
- hosts: localhost
  become: true
  roles:
    - role: diodonfrost.bacula_client
```

## License

Apache 2.0

## Author Information

This role was created in 2018 by diodonfrost.

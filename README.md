tensorflow
==========

This role install tensorflow on Linux(CentOS and Ubuntu are supported).

Role Variables
--------------

There are only two variables for repository mirror, as the default values listed below:

```
    # The venv path to install tensorflow
    tensorflow_venv_path: ~/venvs/tensorflow
    
    # The binary url of tensorflow
    TF_BINARY_URL_Linux_CPU_2: https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.12.0rc0-cp27-none-linux_x86_64.whl

```

Usually you don't need to change them.

Dependencies
------------

This role depend on [frank6866.pip](https://galaxy.ansible.com/frank6866/pip/)

Example Playbook
----------------

```
    - hosts: servers
      roles:
         - { role: frank6866.pip }
         - { role: frank6866.tensorflow }

```

License
-------

MIT


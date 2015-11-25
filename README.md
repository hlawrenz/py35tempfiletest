# Test case for python 3.5 tempfile error

### Updated run steps

1. `vagrant up`
2. `vagrant ssh`
3. `sh /vagrant/buildpy.sh` (now inside vm)
4. `./py35/dist/bin/python3.5 /vagrant/temptest.py` (test distributed
   python)
5. `./py35/patch/bin/python3.5 /vagrant/temptest.py` (test patched
   python)



This repository is a test case for an error with the
`tempfile.TemporaryFile()` call in the python 3.5 standard library.
When calling `tempfile.TemporaryFile()` with the dir argument set to a
directory mounted from the host OS a `FileNotFoundError` is thrown.

To run the test case you need to have vagrant and virtualbox installed.
In the Vagrantfile are two alternate ways of getting python 3.5
installed in the vagrant environment in case one prefers to install from
source.

The test case is found in temptest.py.

Here's an example of the result of running the test case:

```
vagrant@vagrant-ubuntu-trusty-64:~$ /usr/bin/python2.7 /vagrant/temptest.py 
Path 1: worked
Path 2: worked
vagrant@vagrant-ubuntu-trusty-64:~$ /usr/bin/python3.4 /vagrant/temptest.py 
Path 1: worked
Path 2: worked
vagrant@vagrant-ubuntu-trusty-64:~$ /usr/bin/python3.5 /vagrant/temptest.py 
Path 1: worked
Path 2: ERROR
```


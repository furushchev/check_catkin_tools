# check_catkin_tools

This repository is for checking https://github.com/catkin/catkin_tools/issues/672

```bash
cd check_catkin_tools
docker build --no-cache .
```

<details open>
<summary>Example Output</summary>

```
ubuntu@ubuntu:~/check_catkin_tools$ docker build --no-cache .
Sending build context to Docker daemon  6.656kB
Step 1/14 : FROM ros:noetic-robot
 ---> 479a373b3df6
Step 2/14 : ENV DEBIAN_FRONTEND=noninteractive
 ---> Running in 36f7000fed07
Removing intermediate container 36f7000fed07
 ---> 89ae7aa3f608
Step 3/14 : RUN apt-get -qq update && apt-get -qq -y install build-essential cmake git python3-pip
 ---> Running in e6be0f7a4131
debconf: delaying package configuration, since apt-utils is not installed
Selecting previously unselected package less.
(Reading database ... 48349 files and directories currently installed.)
Preparing to unpack .../0-less_551-1ubuntu0.1_amd64.deb ...
Unpacking less (551-1ubuntu0.1) ...
Selecting previously unselected package libcurl3-gnutls:amd64.
Preparing to unpack .../1-libcurl3-gnutls_7.68.0-1ubuntu2.5_amd64.deb ...
Unpacking libcurl3-gnutls:amd64 (7.68.0-1ubuntu2.5) ...
Selecting previously unselected package liberror-perl.
Preparing to unpack .../2-liberror-perl_0.17029-1_all.deb ...
Unpacking liberror-perl (0.17029-1) ...
Selecting previously unselected package git-man.
Preparing to unpack .../3-git-man_1%3a2.25.1-1ubuntu3.1_all.deb ...
Unpacking git-man (1:2.25.1-1ubuntu3.1) ...
Selecting previously unselected package git.
Preparing to unpack .../4-git_1%3a2.25.1-1ubuntu3.1_amd64.deb ...
Unpacking git (1:2.25.1-1ubuntu3.1) ...
Selecting previously unselected package python-pip-whl.
Preparing to unpack .../5-python-pip-whl_20.0.2-5ubuntu1.5_all.deb ...
Unpacking python-pip-whl (20.0.2-5ubuntu1.5) ...
Selecting previously unselected package python3-wheel.
Preparing to unpack .../6-python3-wheel_0.34.2-1_all.deb ...
Unpacking python3-wheel (0.34.2-1) ...
Selecting previously unselected package python3-pip.
Preparing to unpack .../7-python3-pip_20.0.2-5ubuntu1.5_all.deb ...
Unpacking python3-pip (20.0.2-5ubuntu1.5) ...
Setting up less (551-1ubuntu0.1) ...
Setting up libcurl3-gnutls:amd64 (7.68.0-1ubuntu2.5) ...
Setting up python3-wheel (0.34.2-1) ...
Setting up liberror-perl (0.17029-1) ...
Setting up git-man (1:2.25.1-1ubuntu3.1) ...
Setting up python-pip-whl (20.0.2-5ubuntu1.5) ...
Setting up git (1:2.25.1-1ubuntu3.1) ...
Setting up python3-pip (20.0.2-5ubuntu1.5) ...
Processing triggers for libc-bin (2.31-0ubuntu9.2) ...
Processing triggers for mime-support (3.64ubuntu1) ...
Removing intermediate container e6be0f7a4131
 ---> eb9b4fc7679a
Step 4/14 : RUN pip3 freeze
 ---> Running in ab3eaa9aaf6a
bcrypt==3.1.7
catkin-pkg==0.4.23
catkin-pkg-modules==0.4.23
cryptography==2.8
defusedxml==0.6.0
distro==1.4.0
docutils==0.16
empy==3.3.2
netifaces==0.10.4
nose==1.3.7
numpy==1.17.4
paramiko==2.6.0
psutil==5.5.1
pycryptodomex==3.6.1
PyNaCl==1.3.0
pyparsing==2.4.6
python-dateutil==2.7.3
python-gnupg==0.4.5
PyYAML==5.3.1
roman==2.0.0
rosdep==0.20.1
rosdep-modules==0.20.1
rosdistro==0.8.3
rosdistro-modules==0.8.3
rosinstall==0.7.8
rospkg==1.3.0
rospkg-modules==1.3.0
sip==4.19.21
six==1.14.0
vcstools==0.1.42
wstool==0.1.18
Removing intermediate container ab3eaa9aaf6a
 ---> d4cf0003299e
Step 5/14 : RUN pip3 install git+https://github.com/catkin/catkin_tools.git
 ---> Running in 57f5a39eab5b
Collecting git+https://github.com/catkin/catkin_tools.git
  Cloning https://github.com/catkin/catkin_tools.git to /tmp/pip-req-build-mtfq203a
  Running command git clone -q https://github.com/catkin/catkin_tools.git /tmp/pip-req-build-mtfq203a
Requirement already satisfied: PyYAML in /usr/lib/python3/dist-packages (from catkin-tools==0.5.0) (5.3.1)
Requirement already satisfied: catkin-pkg>0.2.9 in /usr/lib/python3/dist-packages (from catkin-tools==0.5.0) (0.4.23)
Collecting osrf-pycommon>0.1.1
  Downloading osrf_pycommon-0.1.9-py3-none-any.whl (38 kB)
Requirement already satisfied: setuptools in /usr/lib/python3/dist-packages (from catkin-tools==0.5.0) (45.2.0)
Building wheels for collected packages: catkin-tools
  Building wheel for catkin-tools (setup.py): started
  Building wheel for catkin-tools (setup.py): finished with status 'done'
  Created wheel for catkin-tools: filename=catkin_tools-0.5.0-py3-none-any.whl size=386665 sha256=fb78d3e5d3ae6ae4379bb8862e03f933f150b8a08c5086c5d908429b35a37261
  Stored in directory: /tmp/pip-ephem-wheel-cache-550wuly3/wheels/79/92/bb/bf192ff496e48042df57edb1a28b93ee572341310d14390f99
Successfully built catkin-tools
Installing collected packages: osrf-pycommon, catkin-tools
Successfully installed catkin-tools-0.5.0 osrf-pycommon-0.1.9
Removing intermediate container 57f5a39eab5b
 ---> 5b92f6d9b665
Step 6/14 : RUN pip3 freeze
 ---> Running in 8915a2061f5c
bcrypt==3.1.7
catkin-pkg==0.4.23
catkin-pkg-modules==0.4.23
catkin-tools==0.5.0
cryptography==2.8
defusedxml==0.6.0
distro==1.4.0
docutils==0.16
empy==3.3.2
netifaces==0.10.4
nose==1.3.7
numpy==1.17.4
osrf-pycommon==0.1.9
paramiko==2.6.0
psutil==5.5.1
pycryptodomex==3.6.1
PyNaCl==1.3.0
pyparsing==2.4.6
python-dateutil==2.7.3
python-gnupg==0.4.5
PyYAML==5.3.1
roman==2.0.0
rosdep==0.20.1
rosdep-modules==0.20.1
rosdistro==0.8.3
rosdistro-modules==0.8.3
rosinstall==0.7.8
rospkg==1.3.0
rospkg-modules==1.3.0
sip==4.19.21
six==1.14.0
vcstools==0.1.42
wstool==0.1.18
Removing intermediate container 8915a2061f5c
 ---> 2a9def7bae9a
Step 7/14 : COPY cmake_pkg /catkin_ws/src/cmake_pkg
 ---> dabb27478af5
Step 8/14 : WORKDIR /catkin_ws
 ---> Running in 14a1ff5c0244
Removing intermediate container 14a1ff5c0244
 ---> b327c76a376a
Step 9/14 : RUN catkin config --init --install --extend /opt/ros/noetic
 ---> Running in bb635058abd5
-----------------------------------------------
Profile:                     default
Extending:        [explicit] /opt/ros/noetic
Workspace:                   /catkin_ws
-----------------------------------------------
Build Space:       [missing] /catkin_ws/build
Devel Space:       [missing] /catkin_ws/devel
Install Space:     [missing] /catkin_ws/install
Log Space:         [missing] /catkin_ws/logs
Source Space:       [exists] /catkin_ws/src
DESTDIR:            [unused] None
-----------------------------------------------
Devel Space Layout:          linked
Install Space Layout:        merged
-----------------------------------------------
Additional CMake Args:       None
Additional Make Args:        None
Additional catkin Make Args: None
Internal Make Job Server:    True
Cache Job Environments:      False
-----------------------------------------------
Whitelisted Packages:        None
Blacklisted Packages:        None
-----------------------------------------------
Workspace configuration appears valid.

Initialized new catkin workspace in `/catkin_ws`
-----------------------------------------------
Removing intermediate container bb635058abd5
 ---> 4a78d2de25c6
Step 10/14 : RUN bash -c "source /opt/ros/noetic/setup.bash && catkin build"
 ---> Running in 6714c38aa22d
-----------------------------------------------
Profile:                     default
Extending:        [explicit] /opt/ros/noetic
Workspace:                   /catkin_ws
-----------------------------------------------
Build Space:        [exists] /catkin_ws/build
Devel Space:        [exists] /catkin_ws/devel
Install Space:     [missing] /catkin_ws/install
Log Space:         [missing] /catkin_ws/logs
Source Space:       [exists] /catkin_ws/src
DESTDIR:            [unused] None
-----------------------------------------------
Devel Space Layout:          linked
Install Space Layout:        merged
-----------------------------------------------
Additional CMake Args:       None
Additional Make Args:        None
Additional catkin Make Args: None
Internal Make Job Server:    True
Cache Job Environments:      False
-----------------------------------------------
Whitelisted Packages:        None
Blacklisted Packages:        None
-----------------------------------------------
Workspace configuration appears valid.

NOTE: Forcing CMake to run for each package.
-----------------------------------------------
[build] Found '1' packages in 0.0 seconds.                                     
Starting >>> catkin_tools_prebuild                                             
Finished <<< catkin_tools_prebuild                [ 1.8 seconds ]              
Starting >>> cmake_pkg                                                         
Finished <<< cmake_pkg                            [ 1.2 seconds ]              
[build] Summary: All 2 packages succeeded!                                     
[build] Ignored: None.                                                         
[build] Warnings: None.                                                        
[build] Abandoned: No packages were abandoned.                                 
[build] Failed: No packages failed.                                            
[build] Runtime: 3.0 seconds total.                                            
[build] Note: Workspace packages have changed, please re-source setup files to use them.
Removing intermediate container 6714c38aa22d
 ---> 3f0120a1f484
Step 11/14 : RUN ls -lFah /catkin_ws/install
 ---> Running in 29f90c573288
total 68K
drwxr-xr-x 5 root root 4.0K Jul 14 00:41 ./
drwxr-xr-x 1 root root 4.0K Jul 14 00:41 ../
-rw-r--r-- 1 root root    0 Jul 14 00:41 .catkin
-rw-r--r-- 1 root root   58 Jul 14 00:41 .rosinstall
-rwxr-xr-x 1 root root  13K Jul 14 00:41 _setup_util.py*
drwxr-xr-x 2 root root 4.0K Jul 14 00:41 bin/
-rwxr-xr-x 1 root root  506 Jul 14 00:41 env.sh*
drwxr-xr-x 3 root root 4.0K Jul 14 00:41 lib/
-rw-r--r-- 1 root root  283 Jul 14 00:41 local_setup.bash
-rw-r--r-- 1 root root  349 Jul 14 00:41 local_setup.sh
-rw-r--r-- 1 root root  293 Jul 14 00:41 local_setup.zsh
-rw-r--r-- 1 root root  260 Jul 14 00:41 setup.bash
-rw-r--r-- 1 root root 2.8K Jul 14 00:41 setup.sh
-rw-r--r-- 1 root root  270 Jul 14 00:41 setup.zsh
drwxr-xr-x 3 root root 4.0K Jul 14 00:41 share/
Removing intermediate container 29f90c573288
 ---> 90d75dbafe1d
Step 12/14 : RUN rm -rf /catkin_ws/install
 ---> Running in b163391a87eb
Removing intermediate container b163391a87eb
 ---> 545de482dd8f
Step 13/14 : RUN bash -c "source /opt/ros/noetic/setup.bash && catkin build"
 ---> Running in 52b0eb418a55
-----------------------------------------------
Profile:                     default
Extending:        [explicit] /opt/ros/noetic
Workspace:                   /catkin_ws
-----------------------------------------------
Build Space:        [exists] /catkin_ws/build
Devel Space:        [exists] /catkin_ws/devel
Install Space:     [missing] /catkin_ws/install
Log Space:          [exists] /catkin_ws/logs
Source Space:       [exists] /catkin_ws/src
DESTDIR:            [unused] None
-----------------------------------------------
Devel Space Layout:          linked
Install Space Layout:        merged
-----------------------------------------------
Additional CMake Args:       None
Additional Make Args:        None
Additional catkin Make Args: None
Internal Make Job Server:    True
Cache Job Environments:      False
-----------------------------------------------
Whitelisted Packages:        None
Blacklisted Packages:        None
-----------------------------------------------
Workspace configuration appears valid.
-----------------------------------------------
[build] Found '1' packages in 0.0 seconds.                                     
Starting >>> cmake_pkg                                                         
Finished <<< cmake_pkg                [ 0.2 seconds ]                          
[build] Summary: All 1 packages succeeded!                                     
[build] Ignored: None.                                                         
[build] Warnings: None.                                                        
[build] Abandoned: No packages were abandoned.                                 
[build] Failed: No packages failed.                                            
[build] Runtime: 0.2 seconds total.                                            
Removing intermediate container 52b0eb418a55
 ---> 76babb6859a8
Step 14/14 : RUN ls -lFah /catkin_ws/install
 ---> Running in 595bfe25ac36
total 12K
drwxr-xr-x 3 root root 4.0K Jul 14 00:41 ./
drwxr-xr-x 1 root root 4.0K Jul 14 00:41 ../
drwxr-xr-x 2 root root 4.0K Jul 14 00:41 bin/
Removing intermediate container 595bfe25ac36
 ---> 9a7da50da956
Successfully built 9a7da50da956
```

</details>

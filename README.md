# Vagrant Configured Development Virtual Machine

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-generate-toc again -->
**Table of Contents**

- [Vagrant Configured Development Virtual Machine](#vagrant-configured-development-virtual-machine)
    - [Overview](#overview)
    - [Dependencies](#dependencies)
    - [Installation](#installation)
    - [Using the VM](#using-the-vm)
        - [Shared Folders](#shared-folders)
        - [VM Login Details](#vm-login-details)
    - [Vagrant Installed Packages](#vagrant-installed-packages)
    - [Post Installation Configuration](#post-installation-configuration)
        - [Copy/Paste](#copypaste)
        - [General Desktop Configurations](#general-desktop-configurations)
        - [Atom Editor](#atom-editor)
        - [Configuring Git](#configuring-git)
- [PlantUML example](#plantuml-example)

<!-- markdown-toc end -->

## Overview

This Vagrant script will install a full development environment.

## Dependencies

The following dependencies are required. But will most likely require
Administration privileges to install.

1. VirtualBox (https://www.virtualbox.org)
   - VirtualBox Guest Additions must also be installed to enable desktop scaling
     and 2D graphics acceleration.
     
2. Git (https://git-for-windows.github.io)

3. Vagrant (https://wwww.vagrantup.com)
   - Following installation of Vagrant, at the command-prompt, execute the
     following; `vagrant plugin install vagrant-vbguest`

## Installation

1. Ensure that the dependencies listed in the previous section are installed.

2. Git clone this repository

3. `cd vagrant-centos-7-vm`

4. Enter `vagrant up` at the command-line in the vagrant-centos-7-vm directory

5. Come back in a couple of hours.

6. Complete the CentOS 7 setup (Choose language, etc.)

## Using the VM

Enter `vagrant up` at the command-line to start the VM.

### Shared Folders
The vagrant virtual machine is configured to share files and folders between the
*Host* system and the *Guest* system. Documents, configurations, and code must
be saved within these shared folders and not in the file-system of the *Guest*
OS because these files *will* be lost if the virtual machine is deleted.

The shared folder is located in the *Guest* system at this location:
`~/Documents` (`/home/vagrant/Documents`).

It is assumed that the `vagrant up` command is executed in the
`\Users\<user_name>\vagrant-centos-7-vm` directory, as the shared folder is
mapped to `\Users\<user_name>\Documents`.

### VM Login Details

Login: `vagrant`
Password: `vagrant`

## Vagrant Installed Packages

Vagrant automatically installs the following packages as part of provisioning
the VM.

* PlantUML
* Graphviz
* Java
* Maven
* Atom editor
* Emacs, with Spacemacs
* Git
* Docker
* LangTool
* TexLive
* Spinx-docker
* Pandoc
* Python

## Post Installation Configuration

### Copy/Paste

To enable copy/paste between *Host* and *Guest* OS, go to the VirtualBox menu
for the VM and enable copy/paste as follows;

*Devices->Shared Clipboard->Bidirectional*

### General Desktop Configurations

1. Change the defaults for the lock screen.
   * *Applications->System Tools->Settings->Privacy->Lock Screen->Off*
2. Change the Timezone
   * *Applications->System Tools->Settings->Date & Time->Automatic Time Zone->Off*
   * *Applications->System Tools->Settings->Date & Time->Time Zone->PDT*
3. Modify the blank screen timeout
   * *Applications->System Tools->Settings->Power->Blank Screen->Never*

### Atom Editor

Vagrant will configure the Atom editor for editing in Markdown and PlantUML.

1. The following Atom packages are installed by this Vagrant script;

    ```bash
    apm install language-plantuml
    apm install plantuml-preview
    apm install language-gfm-enhanced
    apm install markdown-preview-enhanced
    apm install language-restructuredtext
    apm install rst-preview-pandoc
    ```

2. To enable real-time PlantUML preview in Atom;
   *Packages->PlantUML Preview->Toggle*

3. The following must be configured in Atom in order to use the
   `plantuml-preview` package.
   *Edit->Preferences->Packages->plantuml-preview->Settings*
  ```
   Graphvis Dot Executable: /usr/bin/dot
   Additional PlantUML Arguments: -Djava.awt.headless=true
   PlantUML Jar: /home/vagrant/.vagrant-installation/plantuml/plantuml.jar
   Java Executable: /usr/bin/java
  ``` 

### Configuring Git

  ```bash
  git config --global user.name "First Last"
  git config --global user.email "flast@company-name.com"
  git config --global core.autocrlf true
  ```

# PlantUML example

```plantuml
System_A -> System_B
System_B --> System_B
System_A <- System_B
```

```plantuml
Bob -> Alice : hello
Alice -> Bob : Go Away
```


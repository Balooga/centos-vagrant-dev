# Vagrant Configured Development Virtual Machine

## Overview

This Vagrant script will install a full development environment.

## Dependencies

The following dependencies are requireed. But will most likely require Administration privileges to install.

1. VirtualBox (https://www.virtualbox.org)

2. Git (https://git-for-windows.github.io)

3. Vagrant (https://wwww.vagrantup.com)

## Installation

1. Ensure that the dependencies listed in the previous section are installed.

2. Clone the vagrant development repository located here (TBD)

3. Enter `vagrant up` at the command-line in the cloned vagrant directory

4. Come back in a couple of hours.

5. Complete the CentOS 7 setup (Choose language, etc.)

## Using the VM

Enter `vagrant up` at the command-lone to start the VM.

### Shared Folders
The vagrant virtual machine is configured to share files and folders between the *Host* system, and the *Guest* system. Documents, configurations, and code must be saved within these shared folders and not in the file-system of the *Guest* OS because these will be lost if the virtual machine is deleted.

The shared folder is located in `~/Documents` (`/home/vagrant/Documents`).

### VM Login Details

Login: `vagrant`
Password: `vagrant`

## Post Installation Configuration

### Copy/Paste

To enable copy/paste between *Host* and *Guest* OS, go to the VirtualBox menu for the VM and enable copy/paste as follows;

Devices->Shared Clipboard->Bidirectional

### General Desktop Configurations

1. Change the defaults for the lock screen.
   * *Applications->System Tools->Settings->Privacy->Lock Screen->Off*
2. Change the Timezone
   * *Applications->System Tools->Settings->Date & Time->Automatic Time Zone->Off*
   * *Applications->System Tools->Settings->Date & Time->Time Zone->PDT*
3. Modify the blank screen timeout
   * *Applications->System Tools->Settings->Power->Blank Screen->Never*

### Atom Editor

The Atom editor is set up for editing in Markdown and PlantUML.  To edit in Restructured Text (RsT) however, the following packages will need to be configured.

1. PlantUML; The following PlantUML plugins are installed for the Atom editor.  However you will need to specify the location of the `plantuml.jar` file.

   *Edit->Preferences->Packages->plantuml-preview->Settings*

   `Graphvis Dot Executable`: `/usr/bin/dot`
   `Additional PlantUML Arguments`: `-Djava.awt.headless=true"` 
   `PlantUML Jar`: `/home/vagrant/.vagrant-installation/plantuml/plantuml.jar`
   `Java Executable`: `/usr/bin/java`

2. To enable real-time PlantUML preview;
   *Packages->PlantUML Preview->Toggle*


# PlantUML example

````@plantuml
System_A -> System_B
System_B --> System_B
System_A <- System_B
````

# GT Boot Camp - Cybersecurity Bootcamp Project 1
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Cloud Topography](https://github.com/Temife/Cybersecurity_Bootcamp_Project/blob/bb9091ed57661335c25ae6cb75529223a1c77ce1/Diagrams/cloud_environment_topography.png)

These files have been tested Web Vm's configuration playbookThese files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.
  - [filebeat-playbook.yml](https://github.com/Temife/Cybersecurity_Bootcamp_Project/blob/6117bbd98f1f4d519f5166a3cca12a415756fe10/Ansible/filebeat-playbook.yml)
  - [metricbeat-playbook.yml](https://github.com/Temife/Cybersecurity_Bootcamp_Project/blob/6117bbd98f1f4d519f5166a3cca12a415756fe10/Ansible/metricbeat-playbook.yml)
  - [elk server playbook](https://github.com/Temife/Cybersecurity_Bootcamp_Project/blob/6117bbd98f1f4d519f5166a3cca12a415756fe10/Ansible/elk.yml)
  - [filebeat-config.yml](https://github.com/Temife/Cybersecurity_Bootcamp_Project/blob/bb9091ed57661335c25ae6cb75529223a1c77ce1/Ansible/filebeat-config.yml)
  - [metricbeat-config.yml](https://github.com/Temife/Cybersecurity_Bootcamp_Project/blob/bb9091ed57661335c25ae6cb75529223a1c77ce1/Ansible/metricbeat-config.yml)

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.
- What aspect of security do load balancers protect?
- Load Balancing plays an important security role as computing moves evermore to the cloud. The off-loading function of a load balancer defends an organization against distributed denial-of-service (DDoS) attacks. It does this by shifting attack traffic from the corporate server to a public cloud provider.
- What is the advantage of a jump box?
- A jump box is a secure computer that all admins first connect to before launching any administrative task or use as an origination point to connect to other servers or untrusted environments.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the files and system logs.
- What does Filebeat watch for?

- "It monitors the log files or locations that you specify, collects log events, and forwards them either to Elasticsearch or Logstash for indexing."

- What does Metricbeat record?

- "Metricbeat helps to monitor your servers by collecting metrics from the system and services running on the server, such as: Apache."

The configuration details of each machine may be found below.

| Name     | Function      | IP Address     | Operating System |
|----------|---------------|----------------|------------------|
| Jump Box | Gateway       | 10.0.0.4       | Linux            |
| web-1    |Web server     | 10.0.0.5       | Linux            |
| web-2    |Web server     | 10.0.0.6       | Linux            |     
| web-3    |Web server     | 10.0.0.8       | Linux            |
| LB       |Balance Load   | 40.121.208.184 | N/A              |
| Elk      |Elk-SIEM       | 40.122.224.80  |                  |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the load balancer and Jump box machines can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- personal IP can ssh into jumpbox 
- 10.0.0.4

Machines within the network can only be accessed by protocols below.
- ssh from jumpbox to VMs web-1, web-2, web-3 on port 22 
- ssh from personal ip to jumpbox via port 22 
- http from my personal ip to VMs for load balancer access to DVWA

- What was its IP address?
  - ssh from my ip to 10.0.0.4
  - http from my ip to load balancer 40.121.208.184 
  - ssh from Jumpbox 10.0.0.4 to webservers  10.0.0.5, 10.0.0.6 and 10.0.0.8



A summary of the access policies in place can be found in the table below.

| Name        | Publicly Accessible | Allowed IP Addresses |
|-------------|---------------------|----------------------|
| Jump Box    | Yes                 | personal IP          |
| web-1       | No                  | 10.0.0.4 (jumpbox)   |
| web-2       | No                  | 10.0.0.4 (jumpbox)   |
| web-3       | No                  | 10.0.0.4 (jumpbox)   |
| LB          | yes                 | web servers (set)    |
| Elk-server  | yes                 | personal 

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
   - What is the main advantage of automating configuration with Ansible?
     It enables configuration of several servers at scale, which enables faster configuration. 

The playbook implements the following tasks:
   - _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
     - Install Docker
     - Install Python Pip3
     - Install Docker Python Module
     - Update vm.max_map_Count to 262144
     - Download and launch the ELK docker container

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

[Docker ps on ELK] (https://github.com/Temife/Cybersecurity_Bootcamp_Project/blob/b2fedec5701d1bcddd7c6aee632d2236d5988f39/Diagrams/docker_ps.png)
[Host configured with ELK] (https://github.com/Temife/Cybersecurity_Bootcamp_Project/blob/b2fedec5701d1bcddd7c6aee632d2236d5988f39/Diagrams/host_configured.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
   - web-1 10.0.0.5
   - web-2 10.0.0.6
   - web-3 10.0.0.8

We have installed the following Beats on these machines:
   - metricsbeat-config 
   - filesbeat-config 

These Beats allow us to collect the following information from each machine:
   - Filebeat

     "It monitors the log files or locations that you specify, collects log events, and forwards them either to Elasticsearch or Logstash for indexing."

   - Metricbeat

     "It collects metric data from your target servers, this could be operating system metrics such as CPU or memory or data related to services running on the server. It can also be used to monitor other beats and ELK stack itself"

### Using the Playbook

In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:

   - Copy the filebeat Configuration file to /etc/ansible/files/filebet-configuration.yml
   - Update the Filebea Configuration file to include the private IP address of the virtual machine that has been configured to run Elk. 10.1.0.4
   - Run the playbook, and navigate to [/etc/ansible/elk.yml](https://github.com/Temife/Cybersecurity_Bootcamp_Project/blob/cbb39e790b2c4eb22afb6ed1a35b75831c652d61/Ansible/elk.yml)

_TODO: Answer the following questions to fill in the blanks:_
   - _Which file is the playbook? Where do you copy it?_
      curl https://gist.githubusercontent.com/slape/5cc350109583af6cbe577bbcc0710c93/raw/eca603b72586fbe148c11f9c87bf96a63cb25760/Filebeat > /etc/ansible/files/filebeat-config.yml
      curl https://gist.githubusercontent.com/slape/58541585cc1886d2e26cd8be557ce04c/raw/0ce2c7e744c54513616966affb5e9d96f5e12f73/metricbeat > /etc/ansible/files/metricbeat-config.yml
   - _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?
      vi /etc/ansible/files/filebeat-config.yml
      vi /etc/ansible/files/metricbeat-config.yml
      Edit configuration file by scrolling to line #1106 and replace the IP address with the IP address of your ELK machine.
   - _Which URL do you navigate to in order to check that the ELK server is running?
      ```http://[ELK_SERVER_PUBLIC_IP_ADDRESS]:5601/app/kibana```

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._

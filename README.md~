# Cybersecurity_Bootcamp_Project
# GT Boot Camp - Cybersecurity Bootcamp Project 1
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Homework - 12-Cloud-Security.png](https://github.com/Temife/Cybersecurity_Bootcamp_Project/blob/1192e5d0726d419ecbd0ea434084581a39f6bfeb/Diagrams/Homework%20-%2012-Cloud-Security.png
)

These files have been tested Web Vm's configuration playbookThese files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.
  - [filebeat-playbook.yml](https://github.com/Temife/Cybersecurity_Bootcamp_Project/blob/6117bbd98f1f4d519f5166a3cca12a415756fe10/Ansible/filebeat-playbook.yml)
  - [metricbeat-playbook.yml](https://github.com/Temife/Cybersecurity_Bootcamp_Project/blob/6117bbd98f1f4d519f5166a3cca12a415756fe10/Ansible/metricbeat-playbook.yml)
  - [elk server playbook](https://github.com/Temife/Cybersecurity_Bootcamp_Project/blob/6117bbd98f1f4d519f5166a3cca12a415756fe10/Ansible/elk.yml)

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

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.4   | Linux            |
| web-1    |Web server| 10.0.0.5   | Linux            |
| web-2    |Web server| 10.0.0.6   | Linux            |     
| web-3    |Web server| 10.0.0.8   | Linux            |
| LB       |

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
  - 10.0.0.4 to 10.0.0.5, 10.0.0.6 and 10.0.0.8



A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | personal IP          |
| web-1    | No                  | 10.0.0.4             |
|          |                     |                      |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _TODO: What is the main advantage of automating configuration with Ansible?_

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- ...
- ...

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_

We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._

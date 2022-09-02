## ck8s-exoscale

This repository is a bare minimum example to install compliantkubernetes on exoscale

### Prerequisites

**Install the follow**
```bash
# Terraform
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update
sudo apt install git-all python3-venv python3-pip terraform=0.14.11 pwgen ansible
```

**Download exoscale cli**
```bash
wget https://github.com/exoscale/cli/releases/download/v1.59.1/exoscale-cli_1.59.1_linux_amd64.deb
sudo apt install ./exoscale-cli_1.59.1_linux_amd64.deb
```

**Install ansible**
```bash
pip3 install ansible
```

**Clone the following repositories**
```bash
git clone https://github.com/elastisys/compliantkubernetes-apps.git
git clone https://github.com/elastisys/compliantkubernetes-kubespray.git
```

**Set the correct version for compliantkubernetes-kubespray**
```bash
cd compliantkubernetes-kubespray/
git switch -d v2.19.0-ck8s2
git submodule update --recursive --init
```
**Install prerequisites for kubespray**
```
pip3 install -r kubespray/requirements.txt
```

**Set the correct version for compliantkubernetes-apps**
```bash
cd compliantkubernetes-apps/
git switch -d v0.25.0
```

**Install prerequisites for apps**
```
ansible-playbook -e 'ansible_python_interpreter=/usr/bin/python3' --ask-become-pass --connection local --inventory 127.0.0.1, get-requirements.yaml
```

**Set exoscale api access key and secret key**
Set you exoscale credentials in the following file `~/.cloudstack.ini`
```
[cloudstack]
key = <API key>
secret = <API secret>
```

**Generate ssh-key and gpg key**
```
ssh-keygen
gpg --full-generate-key
```


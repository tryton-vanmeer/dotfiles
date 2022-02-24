# install dependencies needed to run on top of a fresh Fedora install
@setup:
  sudo dnf install --assumeyes ansible python3-psutil

# run the Ansible playbook
@run:
  ANSIBLE_NOCOWS=1 ansible-playbook \
  --ask-become-pass --inventory localhost, \
  dotfiles.yaml
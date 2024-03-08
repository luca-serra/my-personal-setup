# My personal setup

## Aliases

Contains the code used to define custom aliases for the shell (mainly git aliases).

## Useful scripts

Contains useful scripts used to simplify tasks.

### Install custom setup on a new Linux machine

This script enables to install custom aliases and [Powerlevel10k](https://github.com/romkatv/powerlevel10k) on a new Linux machine.

1. Copy the `useful_scripts/install_on_vm.sh` script to the new machine:

(**Example for GCP VM**)

```bash
gcloud compute scp useful_scripts/install_on_vm.sh <VM_NAME>:~/ --zone <VM_ZONE>
```

2. Execute the script on the new machine:

```bash
bash ~/install_on_vm.sh
```

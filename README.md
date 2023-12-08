# My personal setup

## Aliases

Contains the code used to define custom aliases for the shell.

## Useful scripts

Contains useful scripts used to simplify tasks.

### Install custom aliases on a new Linux machine

1. Copy the `useful_scripts/install_on_vm.sh` script to the new machine:

(example for GCP VM)

```bash
gcloud compute scp useful_scripts/install_on_vm.sh <VM_NAME>:~/ --zone <VM_ZONE>
```

2. Execute the script on the new machine:

```bash
bash ~/install_on_vm.sh
```

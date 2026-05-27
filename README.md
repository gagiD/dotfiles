# dotfiles

Personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/) and [Ansible](https://www.ansible.com/).

## Quick start

```bash
ansible-playbook ansible/setup.yml --ask-become-pass
```

This installs packages via pacman and deploys configs via stow.

## Adding a new package

Create a directory that mirrors `$HOME`, then test with stow:

```bash
mkdir -p btop/.config/btop          # example: btop config
stow --adopt btop
```

`--adopt` overwrites the repo copy with existing local files (review with `git diff`).

Add the package to `ansible/vars/config.yml`:

```yaml
stow:
  - bin
  - btop
  - emacs
  ...
```

If the tool needs system packages, add them to `ansible/vars/packages.yml`. For packages not managed by Ansible (e.g. `ideavim`), just stow manually.

# Ansible Role: virtio-win

[![Build Status](https://travis-ci.com/ruzickap/ansible-role-virtio-win.svg?branch=master)](https://travis-ci.com/ruzickap/ansible-role-virtio-win)
[![Ansible Galaxy](https://img.shields.io/ansible/role/21593.svg)](https://galaxy.ansible.com/ruzickap/virtio-win/)

Ansible Galaxy: [https://galaxy.ansible.com/ruzickap/virtio-win/](https://galaxy.ansible.com/ruzickap/virtio-win/)

This role should help with installing Virtio Windows drivers
and spice-guest-tools:

* Virtio Network Driver ([netkvm](https://github.com/virtio-win/kvm-guest-drivers-windows/tree/master/NetKVM))
* Virtio Block Driver ([viostor](https://github.com/virtio-win/kvm-guest-drivers-windows/tree/master/viostor))
* QXL Graphics Driver (qxldod)
* VirtIO SCSI pass-through controller Driver ([vioscsi](https://github.com/virtio-win/kvm-guest-drivers-windows/tree/master/vioscsi))
* Baloon Driver ([Balloon](https://github.com/virtio-win/kvm-guest-drivers-windows/tree/master/Balloon))
* Virtio RNG driver ([viorng](https://github.com/virtio-win/kvm-guest-drivers-windows/tree/master/viorng))
* Virtio serial driver ([vioserial](https://github.com/virtio-win/kvm-guest-drivers-windows/tree/master/vioserial))
* Virtio Input driver ([vioinput](https://github.com/virtio-win/kvm-guest-drivers-windows/tree/master/vioinput))
* pvpanic device driver ([pvpanic](https://github.com/virtio-win/kvm-guest-drivers-windows/tree/master/pvpanic))
* Qemu Guest Agent ([qemu-ga-x64](https://wiki.libvirt.org/page/Qemu_guest_agent))
* SPICE Guest Tools ([vdagent-win](https://www.spice-space.org))

It's handy if you are running Windows on the KVM hypervisor, because you will
get the best performance using VirtIO drivers + tools.

## Requirements

Ansible 2.7 or later

## Role Variables

Available variables are listed below, along with default values
(see `defaults/main.yml`):

```yaml
# Find the available versions here https://www.spice-space.org/download/windows/vdagent/
vdagent_win_version: 0.9.0

# URL of the virtio-win.iso
virtio_win_iso_url: https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/latest-virtio/virtio-win.iso

# Path where the are the files/directories from virtio-win.iso (usually CD-ROM). If this is set, then the virtio-win.iso is going to be downloaded.
virtio_win_iso_path: E:\\
```

## Dependencies

Windows 64 bit (amd64) (x64)

## Example Playbook

```yaml
- hosts: all
  roles:
    - { role: ruzickap.virtio-win }
    # or
    - role: ruzickap.virtio-win
      virtio_win_iso_path: 'E:\\'
```

## License

MIT

## Author Information

This role was created in 2017 by [petr.ruzicka@gmail.com](mailto:petr.ruzicka@gmail.com)

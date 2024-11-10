# os-thingy &nbsp; [![bluebuild build badge](https://github.com/randomboixd/os-thingy/actions/workflows/build.yml/badge.svg)](https://github.com/randomboixd/os-thingy/actions/workflows/build.yml) <-- if it fails then epic :3

do this instead: see the [BlueBuild docs](https://blue-build.org/how-to/setup/) for quick setup instructions for setting up your own repository based on this template.

After setup, it is recommended that you do not install.

## (i don't know what i am doing)

if you found this repo. well yeah i am trying to make a image here that i would use on my computer. No real idea what i am doing.

Sooo yeah... this readme is anything but useful.

## Editions

- base (os-thingy)
  ```bash
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/randomboixd/os-thingy:latest
  ```

  *Fedora silverblue, but with things like tailscale and xpadneo preinstalled.*

- Xanmod Edition (os-thingy-xe)
  ```bash
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/randomboixd/os-thingy-xe:latest
  ```

  *Almost the same as base, but with the xanmod kernel. From my experience xpadneo doesn't wanna work here... although could be a skill issue on my part*

-

## Uninstallation

> **Warning**
> This is a terrible idea, please don't... like please

To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/randomboixd/os-thingy:latest
  ```

- Then rebase back to Fedora 41 (because fedora 41 is likely better than this):
  ```
  rpm-ostree rebase fedora:fedora/41/x86_64/silverblue
  ```

Congratulations! You just wasted like 30 minutes rebasing!

## ISO

Why?

If build on Fedora Atomic, you can generate an offline ISO with the instructions available [here](https://blue-build.org/learn/universal-blue/#fresh-install-from-an-iso). These ISOs cannot unfortunately be distributed on GitHub for free due to large sizes, so for public projects something else has to be used for hosting.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/randomboixd/os-thingy
```

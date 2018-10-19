# Wingpanel Ayatana-Compatibility Indicator (Community Version)
A compatibility plug-in that enables ayatana indicators on Wingpanel.

This is needed for third-party indicator support on Elementary OS Juno.

## Dependencies

You'll need the following dependencies to build wingpanel-indicator-ayatana:

|Dependency|Version|
|:--|:--|
|gobject-introspection|*|
|libglib2.0-dev|*|
|libgranite-dev|*|
|libindicator3-dev|*|
|libwingpanel-2.0-dev|*|
|meson|0.48 or newer|
|valac|*|

On ElementaryOS Juno, you will need to install `meson` through `pip3 install meson`.

## Building

Run `meson` to configure the build environment

```bash
meson build
```

Then run `ninja` to build

```bash
cd build
ninja
```

## Installation

To install, use `ninja install`

```bash
sudo ninja install
```

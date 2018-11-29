aurcher
=======

`aurcher` is a tool to build an Arch aur package inside a Docker container.
This is useful to keep your system clean from build deps, and to protect your system from malicious aur scripts.
It is also useful to build packages - e.g. `binaryninja-personal` - which require a binary distribution place into the build directory to succesfully build.

## Build
```bash
git clone --depth=1 https://github.com/pspace/aurcher.git 
cd aurcher
docker build . -t aurcher # repeat this whenever needed - e.g. weekly, or when the build process fails due to unavailable build dependencies
```

## Usage
```bash
/PATH/TO/aurcher <package-name> <dst dir for prepared package .tar.xz>
```

# debian-live-workstation
This repository is used to create a live build of Debian Testing/Bullseye. The main use of this is to burn an image to flash drive, and use it as workstation.

# Specification:
- Debian Version: Testing/Bullseye with Unstable Repository
- Desktop Environment: Mate
- Window Manager: i3
- Build: Minimal (disabled installation of additional packages recommended by apt)
- Included Packages: Graphics, Browsers, LibreOffice, Programming Tools, Virtualization Tools (KVM with libvirtd, virt-manager as GUI), Docker-CE, Tessaract OCR Tool, Arduino, Radio Related Tools, Networking Tools, SMS Management Apps (Gammu)
- Persistence: Active with LUKS encryption
- Estimated Image Size: ~3GB

# Building
1. The image will be built by using container. Use the Dockerfile to generate a container for live build. Buildah is used in creating the container image.
```
buildah bud -f Dockerfile -t debian-live .
```
2. Run the container using podman. The container needs privilaged access to the host system. You also need to use persistent storage for the image file, with exec,dev flags.
```
podman run -ti --privileged --name debian-live -v vdebian:/app:exec,dev debian-live
```
3. Go to /app directory. Clone this repository, and go inside the repository's directory.
```
cd /app;
git clone https://github.com/ZeroExistence/debian-live-workstation.git;
cd debian-live-workstation
```
4. Run the live build command.
```
lb build
```

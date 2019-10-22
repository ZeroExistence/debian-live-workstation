# debian-live-workstation
This repository is used to create a live build of Debian Buster. The main use of this is to burn an image to Flashdrive, and use it as workstation.

# Specification:
- Debian Version: Buster
- Desktop Environment: Mate
- Window Manager: i3
- Build: Minimal (disabled installation of additional packages recommended by apt)
- Included Packages: Graphics, Browsers, LibreOffice, Programming Tools
- Persistence: Active with LUKS encryption (work in progress)
- Estimated Image Size: ~2.5GB

# Building
1. The image will be built by using container. Use the Dockerfile to generate a container for live build. Buildah is used in creating the container image.
`buildah bud -f Dockerfile -t debian-live .`
2. Run the container using podman. The container needs privilaged access to the host system. You also need to use persistent storage for the image file, with exec,dev flags.
`podman run -ti --privileged --name debian-live -v vdebian:/app:exec,dev debian-live`
3. Go to /app directory. Clone this repository, and go inside the repository's directory.
4. Run the live build command.
`lb build`

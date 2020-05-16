FROM gitpod/workspace-full

# add your tools here
ARG GCC_BASE=gcc-arm-none-eabi-8-2019-q3-update
ARG GCC_SHORT=8-2019q3
ARG GCC_URL=https://developer.arm.com/-/media/Files/downloads/gnu-rm/8-2019q3/RC1.1/gcc-arm-none-eabi-8-2019-q3-update-linux.tar.bz2?revision=c34d758a-be0c-476e-a2de-af8c6e16a8a2?product=GNU%20Arm%20Embedded%20Toolchain,64-bit,,Linux,8-2019-q3-update
RUN mkdir -p /home/gitpod/.local && wget -q ${GCC_URL} -O - | tar xfj - -C /home/gitpod/.local --strip-components=1

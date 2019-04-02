FROM archlinux/base 

COPY build.sh /build.sh
WORKDIR /build
RUN pacman -Syy && \
    pacman -S --noconfirm grep fakeroot binutils sudo gawk file && \
    useradd -m builduser && \
    chmod +x /build.sh && \
    chown -R builduser /build && \
    echo "builduser ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/build 

USER builduser

CMD /build.sh

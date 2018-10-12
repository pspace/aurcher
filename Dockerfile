FROM base/devel

COPY build.sh /build.sh
WORKDIR /build

RUN useradd -m builduser && \
    chmod +x /build.sh && \
    chown -R builduser /build && \
    echo "builduser ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/build && \
    pacman -Sy

USER builduser

CMD /build.sh
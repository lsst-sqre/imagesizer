FROM busybox
ARG VERSION="v1.30.1"
WORKDIR /bin
RUN wget https://github.com/kubernetes-sigs/cri-tools/releases/download/${VERSION}/crictl-${VERSION}-linux-amd64.tar.gz && \
    tar xvpfz crictl-${VERSION}-linux-amd64.tar.gz && \
    rm crictl-${VERSION}-linux-amd64.tar.gz
COPY imagesizer /bin
CMD ["/bin/imagesizer"]

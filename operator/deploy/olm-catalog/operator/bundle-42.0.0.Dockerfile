FROM scratch

LABEL operators.operatorframework.io.bundle.mediatype.v1=registry+v1
LABEL operators.operatorframework.io.bundle.manifests.v1=manifests/
LABEL operators.operatorframework.io.bundle.metadata.v1=metadata/
LABEL operators.operatorframework.io.bundle.package.v1=t8c-certified
LABEL operators.operatorframework.io.bundle.channels.v1=stable
LABEL operators.operatorframework.io.bundle.channel.default.v1=stable

COPY 42.0.0/manifests /manifests/
COPY 42.0.0/metadata /metadata/
LABEL com.redhat.openshift.versions="v4.5,v4.6"
LABEL com.redhat.delivery.operator.bundle=true
LABEL com.redhat.delivery.backport=true

vlmcs is a program that can be used to test a KMS server that provides activation for several Microsoft products. The KMS server may also be an emulator. It supports KMS protocol versions 4, 5 and 6. vlmcsd is a fully Microsoft compatible KMS server that provides product activation services to clients. It is meant as a drop-in replacement for a Microsoft KMS server (Windows computer with KMS key entered). It currently supports KMS protocol versions 4, 5 and 6.

    docker run -d -p 1688:1688 --restart=always --name vlmcsd-docker lex241080/vlmcsd

You can also add a DNS server entry (e.g. BIND9)

    _VLMCS._tcp   SRV  0 0 1688 kms
    kms           A    <IP address kms server>

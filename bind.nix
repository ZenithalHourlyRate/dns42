{
  networking.resolvconf.useLocalResolver = false;
  services.bind = {
    enable = true;
    listenOn = [];
    listenOnIpv6 = [ "fd55:a814:708c:11::1" ];
    zones = {
      "z.dn42" = {
        master = false;
        masters = [ "fd55:a814:708c::1" ];
        file = "/var/dns/db.z.dn42";
      };
      "s.z.dn42" = {
        master = false;
        masters = [ "fd55:a814:708c::1" ];
        file = "/var/dns/db.s.z.dn42";
      };
      "224/27.113.21.172.in-addr.arpa" = {
        master = false;
        masters = [ "fd55:a814:708c::1" ];
        file = "/var/dns/db.224-27.113.21.172.in-addr.arpa";
      };
      "c.8.0.7.4.1.8.a.5.5.d.f.ip6.arpa" = {
        master = false;
        masters = [ "fd55:a814:708c::1" ];
        file = "/var/dns/db.c.8.0.7.4.1.8.a.5.5.d.f.ip6.arpa";
      };
    };
  };
}

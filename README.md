# DNS42

My bind config for DN42

Note: `z.dn42` accepts PR (Namely you can register a subdomain) but some names are reserved.

## Registry

<https://explorer.burble.com/#/mntner/ZENITHAL-MNT>

```
ZENITHAL-MNT mntner
Key	Value
mntner	ZENITHAL-MNT
admin-c	ZENITHAL-DN42 person
tech-c	ZENITHAL-DN42 person
mnt-by	ZENITHAL-MNT mntner
source	DN42 registry
auth	pgp-fingerprint 1127F188280AE3123619332987E17EEF9B18B6C9
Referenced by

z.dn42 domain
172.21.113.224\_27 route
ZENITHAL-DN42 person
fd55:a814:708c::\_48 inet6num
ZENITHAL-MNT mntner
AS4242422410 aut-num
fd55:a814:708c::\_48 route6
172.21.113.224\_27 inetnum
```

Explained in plain text, I registered one /27, one /48 and one .dn42, hence I need DNS and rDNS setup.

One thing that worths mentioning is rDNS for /27. As indicated below, DN42 uses CNAME, namely I can control `224/27.113.21.172.in-addr.arpa.`, so I have zone `224/27.113.21.172.in-addr.arpa` configured.

```
$ dig -x 172.21.113.254 @fd42:d42:d42:53::1
;; QUESTION SECTION:
;254.113.21.172.in-addr.arpa.   IN      PTR

;; ANSWER SECTION:
254.113.21.172.in-addr.arpa. 874 IN     CNAME   254.224/27.113.21.172.in-addr.arpa.
254.224/27.113.21.172.in-addr.arpa. 2497 IN PTR dfc.azimuth.s.z.dn42.
```

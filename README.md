# kalaclista logs

- A toolset for web analysis of my website.

## Environment

- Hosting:
  - AWS Cloudfront and AWS S3
- Toolchain: (on NixOS)
  - awscli
  - bash
  - coreuitls
  - finduitls
  - gnugrep
  - gnumake
  - gnused
  - goaccess
  - gzip
  - python3

## Contains

### scripts

- `bin/bundle`
  - bundle logs to one file per day, and remove bundled source files.
- `bin/pull`
  - pull logs from s3 repository.
- `bin/report`
  - make html report files by [goaccess](https://goaccess.io/)

### configurations

- `goaccess.conf`
  - configuration file of `goaccess`
- `Makefile`
  - `make` use as task runner, and define several tasks.

## Author

OKAMURA Naoki aka nyarla <nyarla@kalaclista.com>

## LICENSE

- [CC0](https://creativecommons.org/share-your-work/public-domain/cc0) but except `goaccess.conf`

NOTE:

- I created goaccess.conf by own, but `log-format` copied from [goaccess repository](https://github.com/allinurl/goaccess/blob/master/config/goaccess.conf#L83)
- Source code of `goaccess` is under the [MIT-license](https://github.com/allinurl/goaccess/blob/master/COPYING), and author is [Gerardo Orellana](https://github.com/allinurl)

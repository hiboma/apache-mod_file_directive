 
# mod_file_directive
  
## DESCRIPTION

An Apache module provides `<IfFileExists ...>` conditinal directive checking that specified file exists or not.

## INSTALL

```
sudo apxs -i -c mod_file_directive.c
```

## USAGE

```
LoadModule file_directive_module modules/mod_file_directive.so

<IfFileExists /path/to/anyfile>
  DoSomething
</IfFileExists>
```

Inside `<Virtualhost>` with `Include`

```
<VirtualHost *>
    DocumentRoot /www/docs/example.com
    ServerName   example.com
    <IfFileExists /path/to/anyfile>
        Include some-extra.conf
    </IfFileExists>
</VirtualHost>
```
# crements
inc or dec integers

call inc(x) increments x by 1\
call dec(x) decrements x by 1\
call inc(x,y) increments x by integer y\
call dec(x,y) decrements x by integer y

no need to set the integer kinds, this is matched against x

## Installation
fpm build\
fpm test\
fpm install

This uses the stdlib to reconcile integer kinds. Add as depency in fpm.toml:

```
[dependencies]
stdlib.git = "https://github.com/fortran-lang/stdlib"
stdlib.branch = "stdlib-fpm"
crements.git = "https://github.com/freevryheid/crements"
```




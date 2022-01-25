# crements
fortran module: inc or dec integers\
this is an experimental module for testing generics in fortran.\
**don't use for production** - it's considerably slower than regular x = x + 1, etc

call inc(x) increments x by 1\
call dec(x) decrements x by 1\
call inc(x,y) increments x by integer y\
call dec(x,y) decrements x by integer y

no need to set the integer kinds, this is matched against x

## Installation
fpm build\
fpm test\
fpm install

## Dependency
This uses the stdlib to reconcile integer kinds. Add as dependency in fpm.toml:

```
[dependencies]
stdlib.git = "https://github.com/fortran-lang/stdlib"
stdlib.branch = "stdlib-fpm"
crements.git = "https://github.com/freevryheid/crements"
```




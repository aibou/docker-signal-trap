## run

```
$ docker run --init -d {image id}

+ trap handler SIGTERM
+ PID=8
+ wait 8
+ ./signal.rb
```

## process

```
root@5168b7988679:/# ps aux
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         1  0.1  0.0   1000     4 ?        Ss   12:13   0:00 /sbin/docker-init -- ./entrypoint.sh
root         7  0.0  0.1   5728  3192 ?        S    12:13   0:00 /bin/bash ./entrypoint.sh
root         8 96.2  0.4  75084 13592 ?        R    12:13   0:17 ruby ./signal.rb
root         9  0.6  0.1   5992  3724 pts/0    Ss   12:13   0:00 /bin/bash
root        15  0.0  0.1   8592  3200 pts/0    R+   12:13   0:00 ps aux
```

## stop

```
$ docker stop {container id}

++ handler
++ kill -s SIGTERM 8
++ wait 8
exit
```

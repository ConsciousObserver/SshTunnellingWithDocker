@REM Format is ssh -L local_address:local_port:remote_address:remote_port user@remote_host -p ssh_port

ssh -L 0.0.0.0:8080:localhost:80 foo@localhost -p 2222

@REM Below commands also work, hostnames are optional

@REM ssh -L 8080:localhost:80 foo@localhost -p 2222
@REM ssh -L 8080:80 foo@localhost -p 2222

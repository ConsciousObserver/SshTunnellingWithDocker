@REM Format is ssh -D local_address:local_port:remote_address:remote_port user@remote_host -p ssh_port

ssh -D 0.0.0.0:8080 foo@localhost -p 2222

@REM Following also works, we use specific remote port instead of a dynamic one
@REM ssh -D 0.0.0.0:8080:localhost:8888 foo@localhost -p 2222

root = "/home/deploy/sites/niceTule/"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/tmp/unicorn.niceTule.sock"
worker_processes 2
timeout 30

# Set the working application directory
# working_directory "/path/to/your/app"
working_directory "~/indie/Indie"

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "~/indie/Indie/pids/unicorn.pid"

# Path to logs
# stderr_path "/path/to/log/unicorn.log"
# stdout_path "/path/to/log/unicorn.log"
stderr_path "~/indie/Indie/log/unicorn.log"
stdout_path "~/indie/Indie/log/unicorn.log"

# Unicorn socket
listen "/tmp/unicorn.[Indie].sock"
listen "/tmp/unicorn.Indie.sock"

# Number of processes
# worker_processes 4
worker_processes 2

# Time-out
timeout 30
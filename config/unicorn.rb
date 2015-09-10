worker_processes 3
timeout 30
preload_app true

before_fork do |_server, _worker|
  Signal.trap 'TERM' do
    Process.kill 'QUIT', Process.pid
  end
end

after_fork do |_server, _worker|
  Signal.trap 'TERM' do
  end
end

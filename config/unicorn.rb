worker_processes 4
timeout 30
preload_app true

before_fork do
  Signal.trap 'TERM' do
    Process.kill 'QUIT', Process.pid
  end
end

after_fork do
  Signal.trap 'TERM' do
  end
end

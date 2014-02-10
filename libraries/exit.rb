class Chef
  class Handler
    def self.run_exception_handlers(run_status)
      puts "skipping handlers..."
    end
  end
end


class Chef
  class Client
    def handle_child_exit(pid_and_status)
      status = pid_and_status[1]
      return true if status.success?
      message = if status.signaled?
                  "Chef run process terminated by signal #{status.termsig} (#{Signal.list.invert[status.termsig]})"
                else
                  "Chef run process exited unsuccessfully (exit code #{status.exitstatus})"
                end
      puts message
    end
  end
end
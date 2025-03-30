class Timesheet < Formula
    desc "CLI timesheet tracker backed by Google Sheets"
    homepage "https://github.com/srikanth-karthi/Timesheet-cli-application"
    url "https://github.com/srikanth-karthi/Timesheet-cli-application/releases/download/v2.2.2/timesheet-mac-arm64"
    version "0.1.0"
    sha256 "76355a084a5cd08fc909fbbafa92bb872a2b813f1ab903ba350b610b49851613"
    license "MIT"
  
    def install
        bin.install "timesheet-mac-arm64" => "timesheet"
    
        # Zsh completion
        zsh_output = Utils.safe_popen_read("#{bin}/timesheet", "completion", "zsh")
        (zsh_completion/"_timesheet").write zsh_output
    
        # Bash completion
        bash_output = Utils.safe_popen_read("#{bin}/timesheet", "completion", "bash")
        (bash_completion/"timesheet").write bash_output
    
      end
    
      test do
        assert_match "Usage", shell_output("#{bin}/timesheet --help")
      end
  end
  
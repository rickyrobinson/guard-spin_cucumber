module Guard
  class SpinCucumber
    class Runner
      attr_reader :options

      def initialize(options = {})
        @options = {:all_on_start => true}.merge(options)
      end

      def run(paths)
        run_command spin_push_command(paths), spin_push_options
      end

      def run_all
        return unless options[:all_on_start]
        run(options[:feature_paths])
      end

      private

      def run_command(cmd, options = '')
        system "#{cmd} #{options}"
      end

      def spin_push_command(paths)
        cmd_parts = []
        cmd_parts << "bundle exec" if bundler?
        cmd_parts << "spin cucumber"
        cmd_parts << paths.join(' ')
        cmd_parts.join(' ')
      end

      def spin_push_options
        ''
      end

      def bundler?
        @bundler ||= options[:bundler] != false && File.exist?("#{Dir.pwd}/Gemfile")
      end
    end
  end
end

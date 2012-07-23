require 'guard'
require 'guard/guard'

module Guard
  class SpinCucumber < Guard

    autoload :Runner, 'guard/spin_cucumber/runner'
    attr_accessor :runner

    def initialize(watchers=[], options={})
      super
      @options = {
              :all_on_start   => true,
              :feature_paths     => ["features"],
            }.merge(options)
      @runner = Runner.new(@options)
    end

    def start
      UI.info "Guard::SpinCucumber has started!"
      run_all if @options[:all_on_start]
    end

    def run_all
      UI.info "Guard::SpinCucumber running all features."
      runner.run_all
    end

    def run_on_changes(paths)
      UI.info "Guard::SpinCucumber running features for changes.."
      runner.run(paths)
    end
    # for guard 1.0.x and earlier
    alias :run_on_change :run_on_changes

  end
end

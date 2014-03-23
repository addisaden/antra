module Antra
  module Path
    def self.gem
      File.expand_path '../../..', __FILE__
    end

    def self.gem_path(relative_dir)
      File.expand_path relative_dir, self.gem
    end

    def self.home
      Dir.home
    end

    def self.tmp
      Dir.tmpdir
    end
  end
end

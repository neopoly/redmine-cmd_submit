module CmdSubmit
  # Registers this gems a Redmine plugin and applies the needed patches
  class RedminePlugin
    include CmdSubmit::Infos

    def initialize
      register!
      boot!
      mirror_assets!
    end

    private

    def register!
      @plugin = Redmine::Plugin.register :cmd_submit do
        name NAME
        author AUTHORS.keys.join(", ")
        description DESCRIPTION
        version VERSION
        url URL
        author_url URL
        directory Engine.root
      end
    end

    def boot!
      require "cmd_submit/hooks"
    end

    def mirror_assets!
      @plugin.mirror_assets
    end
  end
end

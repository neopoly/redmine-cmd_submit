module CmdSubmit
  # Includes special javascript files into the base layout
  class Hooks < Redmine::Hook::ViewListener
    # Inject javascript and stylesheet tags
    # @param _context [Hash] ignored
    def view_layouts_base_html_head(_context)
      javascript_tags
    end

    private

    def javascript_tags
      javascript_include_tag "cmd_submit", plugin: "cmd_submit"
    end
  end
end

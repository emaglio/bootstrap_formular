module Blog::Cell

  class Navigation < Trailblazer::Cell
    def current_user
      return options[:context][:current_user]
    end

    def show
      BootstrapVersion::Use == 3 ? bootstrap3 : bootstrap4
    end

    def bootstrap3
      render view: :navigation_bootstrap3
    end

    def bootstrap4
      render view: :navigation_bootstrap4
    end

    def welcome
      current_user.firstname.blank? ? "Hi, " + current_user.email : "Hi, " + current_user.firstname
    end

    def signed_in?
      return current_user != nil
    end

  end # class Navigation

end # module Blog::Cell

module Exporters
    module Twitch
        module Users
            def get_user
                self.class.get('/user')
            end
        end
    end
end

if defined?(::Rails::Engine)
	module KolorPicker
	  class Engine < ::Rails::Engine
	    initializer "kolor-picker" do
	      ActiveSupport.on_load(:action_view) do
	        include KolorPicker::Helper
	      end
	    end
	  end
	end
end

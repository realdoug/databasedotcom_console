require "databasedotcom_console/version"
require "databasedotcom"

module DatabasedotcomConsole
	## Create a new client for use with multiple orgs
	def self.new_client(host, username, password)
		client = Databasedotcom::Client.new(
	          	:client_id => '3MVG9QDx8IX8nP5RUXIFbi3L4rSVruiBU4O_ozvkJiU0aGZDBxfsF6XDhngJf6Ha2fDNniyDxpt0Gb9Pp.2Tk',
	          	:client_secret => '7712607496533706277',
		  				:host => host
	        	)
		client.authenticate(:username => username, :password => password)
		client
	end

	class ScriptRunner
		def initialize(path, connection)
			@dbdc = connection
			vars = binding
			eval(File.read(path), vars) if path.class == String
		end
	end
end

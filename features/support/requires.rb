$LOAD_PATH.unshift File.expand_path("../../../lib/functional_monitoring", __FILE__)

class Requires
	def self.require_files
		#require "providers/dss_associate"
		#require "providers/bootstrapped_provider"
		#require "providers/juddi_provider"
		require "test/orchestration_provider_registry"
		#require "test/base_orchestration_provider"
		Dir.glob(File.expand_path("../../../lib/functional_monitoring/test/**/*.rb", __FILE__), &method(:require))
	end
end

class OpsWorksUtil
	def this_instance()
		search("aws_opsworks_stack","self:true")
	end

	def this_stack()
		search("aws_opsworks_stack").first
	end

	def ssm_parameter(name)
		stack = aws_get_opsworks_stack()
		ssm = ::Aws::SSM::Client.new(region: stack[:region])

		resp = ssm.get_parameter({
			name: name,
			with_decryption: true
		})

		resp.parameter.value
	end
end

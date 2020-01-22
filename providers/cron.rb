default_action :create

action :create do
	server_name = OpsWorksUtil::this_instance()['shortname']

	if new_resource.servers.contains?(server_name) then
		cron new_resource.name do
			action :create
			user node[:opsworks_util][:cron][:user]
			minute new_resource.minute
			hour new_resource.hour
			month new_resource.month
			weekday new_resource.weekday
			path new_resource.path
		end
	end
end

action :delete do
	server_name = opsworks_get_server()['shortname']

	if new_resource.servers.contains?(server_name) then
		cron new_resource.name do
			action :delete
		end
	end
end

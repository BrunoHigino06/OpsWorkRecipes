execute "apt-get-update" do
  command "apt-get update"
  ignore_failure false
  action :nothing
end

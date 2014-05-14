# Definition:  dotenv_create
# Parameters:
# => environment  - Hash with key/value pairs for .env file
# => path         - Path to create dotenv file
# => group        - Group to own the new dotenv file
# => owner        - User to own the new dotenv file

define :dotenv_create do

  env = params[:environment]

  if env.kind_of?(Hash) && env.size > 0

    file "#{params[:path]}/.env" do
      group params[:group]
      owner params[:user]
      mode 0775
      action :create
      content env.map { |k,v| "#{k}=#{v}" }.join("\n")
    end
  end

end


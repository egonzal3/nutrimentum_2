class UsersInformationsController < ApplicationController
  def index
    @users_informations = UsersInformation.all

    render("users_information_templates/index.html.erb")
  end

  def show
    @users_information = UsersInformation.find(params.fetch("id_to_display"))

    render("users_information_templates/show.html.erb")
  end
end

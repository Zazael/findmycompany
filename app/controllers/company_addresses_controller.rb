class CompanyAddressesController < ApplicationController
  before_action :require_user, only: [:index, :departments]

  def index
    if params[:zip_codes] && params[:zip_codes].any?
      @addresses = CompanyAddress.joins(:company).select(
          'companies.company_name, companies.company_size, companies.category ,company_addresses.street_number,
        company_addresses.street_indicator, company_addresses.street_type, company_addresses.street_label,
        company_addresses.zip_code, company_addresses.city, company_addresses.latitude, company_addresses.longitude,
        bookmarks.id as bookmark_id, company_addresses.id as adr_id'
      ).joins("LEFT JOIN bookmarks ON (company_addresses.id = bookmarks.company_address_id AND bookmarks.user_id =
        #{current_user.id})").where(zip_code: params[:zip_codes])
    else
      @addresses = CompanyAddress.joins(:company).select(
          'companies.company_name, companies.company_size, companies.category ,company_addresses.street_number,
        company_addresses.street_indicator, company_addresses.street_type, company_addresses.street_label,
        company_addresses.zip_code, company_addresses.city, company_addresses.latitude, company_addresses.longitude,
        bookmarks.id as bookmark_id, company_addresses.id as adr_id'
      ).joins("LEFT JOIN bookmarks ON (company_addresses.id = bookmarks.company_address_id AND bookmarks.user_id =
        #{current_user.id})").all
    end
  end

  def departments
    @zipcodes = CompanyAddress.select(:zip_code).map(&:zip_code).uniq

  end
end

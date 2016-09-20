class HomeController < ApplicationController
  helper_method :resource_name, :resource, :devise_mapping
  #before_action :scrap, only: [:index]
  
  def index
    @packages = Package.last(10)
  end

  def resource_name
    :user
  end
 
  def resource
    @resource ||= User.new
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def scrap
    require 'nokogiri'
    require 'open-uri'

    key = params[:key]

    unless key.blank?
      url = "http://www.chilexpress.cl/Views/ChilexpressCL/Resultado-busqueda.aspx?DATA=#{key}"
      doc = Nokogiri::HTML(open(url))
      unless doc.blank?
        puts doc.at_css("title").text
        track_number, product, service, status, receptor_key, date, hour, receptor_name = '','','','','','','',''
        wigdet = doc.css(".wigdet-content")
        unless wigdet.blank?
          li = wigdet[0].css("li")
          track_number = li[1].text.to_s.split(':')[1].strip
          product = li[2].text.to_s.split(':')[1].strip
          service = li[3].text.to_s.split(':')[1].strip
          status = li[4].text.to_s.split(':')[1].strip

          li = wigdet[1].css("li")
          receptor_key = li[1].text.to_s.split(':')[1].strip
          date = li[2].text.to_s.split(':')[1].strip
          hour = "#{li[3].text.to_s.split(':')[1].strip}:#{li[3].text.to_s.split(':')[2].strip}"
          receptor_name = li[4].text.to_s.split(':')[1].strip

          unless track_number.blank?
            p = Package.where(track_number: track_number).first
            if p.blank?
              p = Package.new(track_number: track_number, product_name: product, status: status, service: service, receptor_key: receptor_key, receptor_name: receptor_name, arrived_date: date, arrived_hour: hour)
              p.office_id = 3
              p.save
              if p.persisted?
                redirect_to root_path
              end
            else
              p.update(product_name: product, status: status, service: service, receptor_key: receptor_key, receptor_name: receptor_name, arrived_date: date, arrived_hour: hour)
              redirect_to root_path
            end
          end

          puts "#{track_number}"
          puts "#{product}"
          puts "#{service}"
          puts "#{status}"

          puts "#{receptor_key}"
          puts "#{date}"
          puts "#{hour}"
          puts "#{receptor_name}"
        else
          redirect_to root_path
        end
      else
        redirect_to root_path
      end
    else
      redirect_to root_path
    end
  end
end

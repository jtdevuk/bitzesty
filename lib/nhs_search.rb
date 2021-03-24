require 'nokogiri'
require 'http'

class NhsSearch
    def ae_by_postcode(postcode)
      response = HTTP.follow(strict: false).post "https://www.nhs.uk/service-search/other-services/Accident-and-emergency-services/LocationSearch/428",
      :form => { 
        'Location.Name': postcode,
        'Service.Name': 'Accident+and+emergency+services',
        'Service.Id': '428'
       }
       return unless response.status.success?
       html_doc = Nokogiri::HTML(response.body.to_s)

       h_list = html_doc.xpath('//*[@id="main-content"]/div/div[3]/div[1]/div[1]/ul/li')

       h_list.collect do |hospital|
        link = hospital.xpath(".//h2/a").first
        name = link.text
        nhsurl= link["href"]
        tel = hospital.xpath(".//p[@class='fctel']").first&.text
        address = hospital.xpath(".//p[@class='fcaddress']").first&.text
        # TODO extract hospital timetable details and store them in a new model.
        Hospital.find_or_create_by(name: name, tel: tel, address: address, website: nhsurl)
      end
    end
end

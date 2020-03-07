require "nokogiri"
require "open-uri"
require "csv"

def perform
	doc = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"))
	n = 1
	doc.css("#deputes-list li a").each do |deputy|
		url_deputy = "http://www2.assemblee-nationale.fr" + deputy["href"]
		scrap_deputy_name_email(url_deputy)
		puts "#{n}/577 député.e.s enregistré.e.s"
		n += 1
	end
end

def scrap_deputy_name_email(url)
	doc = Nokogiri::HTML(open(url))
	email = doc.xpath('//a[starts-with(@href,"mailto")]')[0]["href"][7..-1]
	first_name = doc.xpath("//*/article/div[2]/h1").text.split[1]
	last_name = doc.xpath("//*/article/div[2]/h1").text.split[2..-1].join(" ")

	save_csv([last_name, first_name, email])
end

def save_csv(deputy_infos)
	CSV.open("../db/emails_deputies.csv", "a") do |csv|
		csv << [deputy_infos[0], deputy_infos[1], deputy_infos[2]]
	end
end

perform
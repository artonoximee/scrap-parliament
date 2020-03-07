require "nokogiri"
require "open-uri"
require "csv"

def perform
	doc = Nokogiri::HTML(open("https://www.senat.fr/senateurs/senatl.html"))
	n = 1
	doc.css("#cols-anchors li a").each do |senator|
		url_senator = "https://www.senat.fr/" + senator["href"]
		scrap_senator_name_email(url_senator)
		puts "#{n}/348 sénateur·e·s enregistré.e.s"
		n += 1
	end
end

def scrap_senator_name_email(url)
	doc = Nokogiri::HTML(open(url))
	if !doc.xpath('//*[@id="block-senator"]/dl/dd[1]/a').empty?
		email = doc.xpath('//*[@id="block-senator"]/dl/dd[1]/a')[0]["href"][7..-1]
	end
	first_name = doc.xpath('//*[@id="primary"]/div[1]/div[2]/h1').text.split[1]
	last_name = doc.xpath('//*[@id="primary"]/div[1]/div[2]/h1').text.split[2..-1].join(" ")

	save_csv([last_name, first_name, email])
end

def save_csv(senator_infos)
	CSV.open("../db/emails_senators.csv", "a") do |csv|
		csv << [senator_infos[0], senator_infos[1], senator_infos[2]]
	end
end

perform


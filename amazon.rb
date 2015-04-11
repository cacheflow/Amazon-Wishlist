require "watir-webdriver"
puts "Enter the site you want to get links from"
answer = gets.chomp 

browser = Watir::Browser.new(:chrome)
browser.goto("#{answer}")

links = []
browser.links.each do |amazon_link|
  if amazon_link.href.include?("amazon")
    links << amazon_link.a
  end 
end 
sleep(1.4)
browser.goto("http://www.amazon.com")
browser.span(class: "nav-line-1").click 



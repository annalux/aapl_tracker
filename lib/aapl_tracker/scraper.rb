class AaplTracker::Scraper

    @@url = "https://finance.yahoo.com/quote/AAPL"

    def self.scrape_yahoo 
        doc = Nokogiri::HTML(open(@@url))
        @metrics = {}
        @metrics[:previous_close] = doc.css("span[class='Trsdu(0.3s) ']")[0].text
        @metrics[:open] = doc.css("span[class='Trsdu(0.3s) ']")[1].text
        @metrics[:bid] = doc.css("span[class='Trsdu(0.3s) ']")[2].text
        @metrics[:ask] = doc.css("span[class='Trsdu(0.3s) ']")[3].text
        @metrics[:days_range] = doc.css("td[class='Ta(end) Fw(600) Lh(14px)']")[4].text
        @metrics[:fiftytwo_week_range] = doc.css("td[class='Ta(end) Fw(600) Lh(14px)']")[5].text
        @metrics[:volume] = doc.css("span[class='Trsdu(0.3s) ']")[4].text
        @metrics[:average_volume] = doc.css("span[class='Trsdu(0.3s) ']")[5].text
        @metrics[:market_cap] = doc.css("span[class='Trsdu(0.3s) ']")[6].text
        @metrics[:beta_fiveyear_monthly] = doc.css("span[class='Trsdu(0.3s) ']")[7].text
        @metrics[:pe_ratio_ttm] = doc.css("span[class='Trsdu(0.3s) ']")[8].text
        @metrics[:eps_ttm] = doc.css("span[class='Trsdu(0.3s) ']")[9].text
        @metrics[:earnings_date] = doc.css("td[class='Ta(end) Fw(600) Lh(14px)']")[12].text
        @metrics[:forward_dividend_and_yield] = doc.css("td[class='Ta(end) Fw(600) Lh(14px)']")[13].text
        @metrics[:ex_dividend_date] = doc.css("td[class='Ta(end) Fw(600) Lh(14px)']")[14].text
        @metrics[:oneyear_target_est] = doc.css("span[class='Trsdu(0.3s) ']")[10].text
        @metrics
        # @metrics.each {|k, v| print k, ": ", v, "\n"}
    end 


end 
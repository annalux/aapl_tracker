class AaplTracker::TickerData
    attr_accessor :previous_close, :open, :bid, :ask, :days_range, :fiftytwo_week_range, :volume, :average_volume, :market_cap, :beta_fiveyear_monthly, :pe_ratio_ttm, :eps_ttm, :earnings_date, :forward_dividend_and_yield, :ex_dividend_date, :oneyear_target_est

    def initialize
        @metrics_hash = AaplTracker::Scraper.scrape_yahoo
        @metrics_hash.each {|key, value| self.send(("#{key}="), value)} 
    end 

end 
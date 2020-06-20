class AaplTracker::CLI 
    
    def initialize
        puts "Welcome, Steve! Let's check in on AAPL.".colorize(:light_blue)
        puts "Which metric would you like to see?".colorize(:light_blue)
        self.menu
    end 

    def scrape 
        @tickerdata = AaplTracker::TickerData.new 
    end 

    def menu
        puts "1.".colorize(:light_green) + " Previous Close"
        puts "2.".colorize(:light_green) + " Open"
        puts "3.".colorize(:light_green) + " Bid"
        puts "4.".colorize(:light_green) + " Ask"
        puts "5.".colorize(:light_green) + " Day's Range"
        puts "6.".colorize(:light_green) + " 52 Week Range"
        puts "7.".colorize(:light_green) + " Volume"
        puts "8.".colorize(:light_green) + " Avg. Volume"
        puts "9.".colorize(:light_green) + " Market Cap"
        puts "10.".colorize(:light_green) + " Beta (5Y Monthly)"
        puts "11.".colorize(:light_green) + " PE Ratio (TTM)"
        puts "12.".colorize(:light_green) + " EPS (TTM)"
        puts "13.".colorize(:light_green) + " Earnings Date"
        puts "14.".colorize(:light_green) + " Forward Dividend & Yield"
        puts "15.".colorize(:light_green) + " Ex-Dividend Date"
        puts "16.".colorize(:light_green) + " 1Y Target Est"
        puts "17.".colorize(:light_green) + " View all"
        puts "Please enter the number of your choice.".colorize(:blue)
    end 

    def get_metric
        response = gets.chomp.to_i
        puts "Previous Close:".colorize(:magenta) + " $#{@tickerdata.previous_close}" if response == 1
        puts "Open:".colorize(:magenta) + " $#{@tickerdata.open}" if response == 2
        puts "Bid:".colorize(:magenta) + " $#{@tickerdata.bid}" if response == 3 
        puts "Ask:".colorize(:magenta) + " $#{@tickerdata.ask}" if response == 4
        puts "5 Day's Range:".colorize(:magenta) + " $#{@tickerdata.days_range}" if response == 5
        puts "52 Week Range:".colorize(:magenta) + " $#{@tickerdata.fiftytwo_week_range}" if response == 6
        puts "Volume:".colorize(:magenta) + " #{@tickerdata.volume}" if response == 7
        puts "Avg. Volume:".colorize(:magenta) + " #{@tickerdata.average_volume}" if response == 8 
        puts "Market Cap:".colorize(:magenta) + " $#{@tickerdata.market_cap}" if response == 9
        puts "Beta (5Y Monthly):".colorize(:magenta) + " #{@tickerdata.beta_fiveyear_monthly}" if response == 10
        puts "PE Ratio (TTM):".colorize(:magenta) + " #{@tickerdata.pe_ratio_ttm}" if response == 11
        puts "EPS (TTM):".colorize(:magenta) + " $#{@tickerdata.eps_ttm}" if response == 12
        puts "Earnings Date:".colorize(:magenta) + " #{@tickerdata.earnings_date}" if response == 13
        puts "Forward Dividend & Yield:".colorize(:magenta) + " #{@tickerdata.forward_dividend_and_yield}" if response == 14
        puts "Ex-Dividend Date:".colorize(:magenta) + " #{@tickerdata.ex_dividend_date}" if response == 15
        puts "1Y Target Est:".colorize(:magenta) + " #{@tickerdata.oneyear_target_est}" if response == 16 
        if response == 17 
            puts "Previous Close:".colorize(:magenta) + " $#{@tickerdata.previous_close}" 
            puts "Open:".colorize(:magenta) + " $#{@tickerdata.open}" 
            puts "Bid:".colorize(:magenta) + " $#{@tickerdata.bid}" 
            puts "Ask:".colorize(:magenta) + " $#{@tickerdata.ask}" 
            puts "5 Day's Range:".colorize(:magenta) + " $#{@tickerdata.days_range}" 
            puts "52 Week Range:".colorize(:magenta) + " $#{@tickerdata.fiftytwo_week_range}" 
            puts "Volume:".colorize(:magenta) + " #{@tickerdata.volume}" 
            puts "Avg. Volume:".colorize(:magenta) + " #{@tickerdata.average_volume}" 
            puts "Market Cap:".colorize(:magenta) + " $#{@tickerdata.market_cap}" 
            puts "Beta (5Y Monthly):".colorize(:magenta) + " #{@tickerdata.beta_fiveyear_monthly}" 
            puts "PE Ratio (TTM):".colorize(:magenta) + " #{@tickerdata.pe_ratio_ttm}" 
            puts "EPS (TTM):".colorize(:magenta) + " $#{@tickerdata.eps_ttm}" 
            puts "Earnings Date:".colorize(:magenta) + " #{@tickerdata.earnings_date}" 
            puts "Forward Dividend & Yield:".colorize(:magenta) + " #{@tickerdata.forward_dividend_and_yield}" 
            puts "Ex-Dividend Date:".colorize(:magenta) + " #{@tickerdata.ex_dividend_date}" 
            puts "1Y Target Est:".colorize(:magenta) + " #{@tickerdata.oneyear_target_est}" 
        elsif response > 17 || response < 1 
            puts "Nice number! But your choice must be between 1-17.".colorize(:red)
        end 
    end 

    def continue
        puts "What would you like to do next?".colorize(:light_blue)
        puts "To select a new metric, enter ".colorize(:light_blue) + "'menu'".colorize(:light_green) + ". To end this session, enter ".colorize(:light_blue) + "'exit'".colorize(:light_green) + ".".colorize(:light_blue)
        response = gets.chomp
        if response == "menu"
            self.menu
            self.get_metric
            self.continue
        elsif response == "exit"
            puts "Thank you for checking on AAPL. See you next time!".colorize(:light_blue)
            exit 
        end 
    end 
end 
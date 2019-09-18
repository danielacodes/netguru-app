# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  released_at :datetime
#  avatar      :string
#  genre_id    :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Movie < ApplicationRecord
    has_many :comments
    belongs_to :genre
    
  
end

    def get_plot(movie)
        if movie.match(/\s/)
            plot="Movie plot not available"
        else        
            response=HTTParty.get('https://pairguru-api.herokuapp.com/api/v1/movies/'+movie)
            plot=response.parsed_response["data"]["attributes"]["plot"]
        end
    end
    
    def get_rating(movie)
        if movie.match(/\s/)
            rating="Movie rating not available"
        else        
            response=HTTParty.get('https://pairguru-api.herokuapp.com/api/v1/movies/'+movie)
            rating=response.parsed_response["data"]["attributes"]["rating"]
        end
    end
    
    def get_poster_url(movie)
        if movie.match(/\s/)
            poster_url="https://blowmage.com/images/rubyfunwrong.png"
        else        
            response=HTTParty.get('https://pairguru-api.herokuapp.com/api/v1/movies/'+movie)
            poster_url="https://pairguru-api.herokuapp.com"+response.parsed_response["data"]["attributes"]["poster"]
        end
    end

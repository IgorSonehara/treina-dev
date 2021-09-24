class Recipe
    attr_accessor :title, :description, :ingredients, :cook_time, :featured

    def initialize(title:, description:, ingredients:, cook_time:, featured:)
        @title = title
        @description = description
        @ingredients = ingredients
        @cook_time = cook_time
        @featured = featured
    end

    def self.from_json(data)
        file = File.read(data)
        data_hash = JSON.parse(file)
        Recipe.new(title: data_hash['title'], description: data_hash['description'], ingredients: data_hash['ingredients'], cook_time: data_hash['cook_time'], featured: data_hash['featured']) 
    end
end

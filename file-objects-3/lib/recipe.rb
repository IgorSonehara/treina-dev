require 'json'

class Recipe
  attr_reader :title, :description, :ingredients, :cook_time, :featured

  def initialize(title:, description:, ingredients:, cook_time:,
                 featured: false)
    @title = title
    @description = description
    @ingredients = ingredients
    @cook_time = cook_time
    @featured = featured
  end

  def self.from_json(local_arquivo)
    conteudo = File.read(local_arquivo)
    json = JSON.parse(conteudo)

    if json.class == Array
      receitas = []
      json.each do |receita|
        objeto = Recipe.new(title: receita['title'],
          description: receita['description'],
          ingredients: receita['ingredients'],
          cook_time: receita['cook_time'],
          featured: receita['featured'])
          receitas << objeto
      end
      receitas
    else
      Recipe.new(title: json['title'],
                description: json['description'],
                ingredients: json['ingredients'],
                cook_time: json['cook_time'],
                featured: json['featured'])
    end
  end

  def save_to_file
    File.open('data/recipe.json', 'w+') do |f|
      f.print to_json
    end
  end
end
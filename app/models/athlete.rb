class Athlete < ApplicationRecord
  def details
    if super.blank?
      set_details
    else
      super
    end
  end

  private

  def set_details
    client = OpenAI::Client.new
    chaptgpt_response = client.chat(parameters: {
      model: "gpt-3.5-turbo",
      messages: [{ role: "user", content: "For #{name}. In bullet point form under the headers Team:, Strengths:, Weaknesses:, give me the team they play for , their 5 strengths and their 5 weaknesses, without any of your own answer  like 'of the players name'"}]
    })

    new_details = chaptgpt_response["choices"][0]["message"]["content"]

    update(details: new_details)
    return new_details
  end

end

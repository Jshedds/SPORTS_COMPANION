class Athlete < ApplicationRecord
  # after_save :set_details, if: -> { saved_change_to_name? || saved_change_to_details? }

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
      messages: [{ role: "user", content: "For #{name}, with \nSPORT\n, \nSTRENGTHS\n & \nWEAKNESSES\n as headers. Give me the sport they played, their 5 strengths and their 5 weaknesses numbered under each header, without any extra text, with the headers on separate lines from the numbered strengths and weaknesses."}]
    })
      puts chaptgpt_response["choices"][0]["message"]["content"]
    new_details = chaptgpt_response["choices"][0]["message"]["content"]

    update(details: new_details)
    return new_details
  end

end

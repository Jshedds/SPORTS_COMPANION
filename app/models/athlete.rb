class Athlete < ApplicationRecord
  def details
    client = OpenAI::Client.new
    chaptgpt_response = client.chat(parameters: {
      model: "gpt-3.5-turbo",
      messages: [{ role: "user", content: "For #{name}.  Give me only the text of the team they play for 5 strengths and 5 weaknesses, without any of your own answer in bullet point form."}]
    })

    chaptgpt_response["choices"][0]["message"]["content"]

    # update(content: new_content)
    # return new_content
  end
  
end

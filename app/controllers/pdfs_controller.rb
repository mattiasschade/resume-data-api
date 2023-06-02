require 'grover'
require 'httparty'

class PdfsController < ApplicationController
  def generate
    response = HTTParty.get('http://localhost:3000/students/2.json')
    data = response.parsed_response

    html = render_to_string(template: "pdfs/resume_template", locals: { data: data })

    grover = Grover.new(html, format: 'A4', timeout: 30000)
    pdf = grover.to_pdf

    send_data pdf, filename: 'generated_pdf.pdf', type: 'application/pdf', disposition: 'inline'
  end
end
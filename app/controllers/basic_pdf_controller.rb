class BasicPdfController < ApplicationController
  def index
    respond_to do |format|
      format.pdf do
        basic_pdf = PracticePdf::BasicPdf.new().render
        send_data basic_pdf,
          filename: 'basic_pdf.pdf',
          type: 'application/pdf',
          disposition: 'inline' # 画面に表示
      end
    end
  end
end

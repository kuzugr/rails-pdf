module PracticePdf
  class BasicPdf < Prawn::Document
    def initialize
      # 新規PDF作成
      super(page_size: 'A4')
      # 座標を表示
      stroke_axis

      cover
      introduction
    end

    def cover
      font FONT
      text_box 'サブタイトル', size: 12, at: [0, 600], width: 520, height: 12, align: :center

      font FONT_BOLD
      text_box 'タイトル', size: 24, at: [0, 500], width: 520, height: 24, align: :center

      font FONT
      text_box 'kuzugr', size: 12, at: [0, 12], width: 520, height: 12, align: :right
    end

    def introduction
      start_new_page(page_size: 'A4')
      stroke_axis

      text_box '色々な機能の紹介', size: 12, at: [0, 750], width: 520, height: 12
      line([0, 737], [520, 737])
      stroke

      text_box '・線について', size: 10, at: [10, 700], width: 520, height: 10

      text_box '- 太さ', size: 8, at: [20, 680], width: 520, height: 8
      line_width 2.0
      line([20, 670], [100, 670])
      stroke

      text_box '- ダッシュ', size: 8, at: [20, 660], width: 520, height: 8
      line_width 1.0
      dash 1
      line([20, 651], [100, 651])
      stroke

      text_box '- ダッシュ2', size: 8, at: [20, 640], width: 520, height: 8
      dash 5
      line([20, 631], [100, 631])
      stroke

      text_box '- 色', size: 8, at: [20, 620], width: 520, height: 8
      undash
      stroke_color 'D70C18'
      line([20, 611], [100, 611])
      stroke

      text_box '- 四角', size: 8, at: [20, 600], width: 520, height: 8
      stroke_color '2C2C2C'
      line([20, 591], [100, 591])
      line([20, 571], [100, 571])
      line([20, 571], [20, 591])
      line([100, 571], [100, 591])
      stroke
    end
  end
end
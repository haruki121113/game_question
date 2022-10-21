require 'rails_helper'

RSpec.describe Question, type: :model do
  before do
    @question = FactoryBot.build(:question)
  end
  describe '質問新規投稿' do
    context '新規投稿できるとき' do
      it 'すべの情報が正しく入力されている' do
        expect(@question).to be_valid
      end
    end

    context '新規投稿できないとき' do
      it 'titleが空だと保存できない' do
        @question.title = ''
        @question.valid?
        expect(@question.errors.full_messages).to include("Title can't be blank")
      end
      it 'contentが空だと保存できない' do
        @question.content = ''
        @question.valid?
        expect(@question.errors.full_messages).to include("Content can't be blank")
      end
      it 'userが紐づいていないと保存できない' do
        @question.user = nil
        @question.valid?
        expect(@question.errors.full_messages).to include("User must exist")
      end
    end
  end
end

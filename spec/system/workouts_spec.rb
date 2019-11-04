require 'rails_helper'

RSpec.describe '投稿機能', type: :system do
  describe '一覧表示機能' do
    before do
      # ユーザーを作成しておく
      user_a = FactoryBot.create(:user, name: 'ユーザーA', email: 'a@example.com')
      # 作成者がユーザーAである投稿を作成しておく
      FactoryBot.create(:workout, description: '最初の投稿', user: user_a)
    end
    
    context 'ユーザーAがログインしているとき' do
      before do
        # ユーザーAでログインする'
        visit login_path
        fill_in 'メールアドレス', with: 'a@example.com'
        fill_in 'パスワード', with: 'password12'
        click_button 'ログインする'
      end
      
      it 'ユーザーAが作成した投稿が表示される' do
        # 作成済みの投稿の投稿内容が画面上に表示されていることを確認
        expect(page).to have_description '最初の投稿'
      end
    end
  end
end

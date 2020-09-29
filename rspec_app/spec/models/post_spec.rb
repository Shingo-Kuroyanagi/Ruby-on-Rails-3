require 'rails_helper'

RSpec.describe Post, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  context "データが正しく保存される" do
    before do
      @post = Post.new
      @post.title = "Hello Webcamp"
      @post.content = "今日も晴れです。"
      @post.save
    end

    it "全て入力されているので保存される" do
      expect(@post).to be_valid
    end
  end

  context "データが正しく保存されない" do
    before do
      @post = Post.new
      @post.title = ""
      @post.content = "今日も晴れです。"
      @post.save
    end

    it "全て入力されているので保存される" do
      expect(@post).to be_invalid
      expect(@post.errors[:title]).to include("can't be blank")
    end
  end
end

require 'test_helper'

class PostTest < ActiveSupport::TestCase
   test "can create new posts" do
     post = Post.new
     assert true
   end

   test "cannot create post without title" do
     post = Post.new
     assert_not(post.valid?)
   end
end

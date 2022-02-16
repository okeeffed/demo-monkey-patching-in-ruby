module CoreExtensions
  module MonkeyPatching
    module Basic
      def hello
        'people'
      end

      def extend
        "I am #{super}"
      end
    end
  end
end

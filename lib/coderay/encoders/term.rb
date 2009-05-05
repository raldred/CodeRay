# encoders/term.rb
# By Nathan Weizenbaum (http://nex-3.com)
# MIT License (http://www.opensource.org/licenses/mit-license.php)
#
# A CodeRay highlighter that outputs code highlighted for a color terminal.
# Check out http://nex-3.com/posts/37-terminal-syntax-highlighting

module CodeRay
module Encoders
  class Term < Encoder
    register_for :term

    TOKEN_COLORS = {
      :attribute_name => '34',
      :attribute_name_fat => '34',
      :attribute_value => '31',
      :attribute_value_fat => '31',
      :bin => '1;35',
      :char => {:self => '36', :delimiter => '34'},
      :class => '1;35',
      :class_variable => '36',
      :color => '32',
      :comment => '37',
      :constant => ['34', '4'],
      :definition => '1;32',
      :directive => ['32', '4'],
      :doc => '46',
      :doc_string => ['31', '4'],
      :entity => '33',
      :error => ['1;33', '41'],
      :exception => '1;31',
      :float => '1;35',
      :function => '1;34',
      :global_variable => '42',
      :hex => '1;36',
      :include => '33',
      :integer => '1;34',
      :interpreted => '1;35',
      :label => '1;4',
      :local_variable => '33',
      :oct => '1;35',
      :operator_name => '1;29',
      :pre_constant => '1;36',
      :pre_type => '1;30',
      :predefined => ['4', '1;34'],
      :preprocessor => '36',
      :regexp => {
        :content => '31',
        :delimiter => '1;29',
        :modifier => '35',
        :function => '1;29'
      },
      :reserved => '1;31',
      :shell => {:self => '42', :content => '1;29'},
      :string => '32',
      :symbol => '1;32',
      :tag => '34',
      :tag_fat => '1;34',
      :tag_special => ['34', '4'],
      :type => '1;34',
      :variable => '34'
    }
    TOKEN_COLORS[:procedure] = TOKEN_COLORS[:method] = TOKEN_COLORS[:function]
    TOKEN_COLORS[:open] = TOKEN_COLORS[:close] = TOKEN_COLORS[:nesting_delimiter] = TOKEN_COLORS[:escape] = TOKEN_COLORS[:delimiter]

    protected

    def setup(options)
      @out = ''
      @subcolors = nil
    end

    def finish(options)
      @out
    end

    def text_token(text, kind)
      if color = (@subcolors || TOKEN_COLORS)[kind]
        color = color[:self] || return if Hash === color

        @out << col(color) + text.gsub("\n", col(0) + "\n" + col(color)) + col(0)
        @out << col(@subcolors[:self]) if @subcolors && @subcolors[:self]
      else
        @out << text
      end
    end

    def open_token(kind)
      if color = TOKEN_COLORS[kind]
        if Hash === color
          @subcolors = color
          @out << col(color[:self]) if color[:self]
        else
          @subcolors = {}
          @out << col(color)
        end
      end
    end

    def close_token(kind)
      if (@subcolors || {})[:self]
        @out << col(0)
      end
      @subcolors = nil
    end

    private

    def col(color)
      Array(color).map { |c| "\e[#{c}m" }.join
    end
  end
end
end
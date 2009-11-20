Gem::Specification.new do |s|
  # Basic Information
  s.name = 'coderay'
  s.rubyforge_project = 'coderay'
  s.version = '0.9.3941'

  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 1.8.2'
  s.requirements = []
  s.date = Time.now.strftime '%Y-%m-%d'
  s.has_rdoc = true
  s.rdoc_options = '-SNw2', '-mlib/README', '-a', '-t CodeRay Documentation'
  s.extra_rdoc_files = ['LICENSE','IDEA','FOLDERS','TODO']

  # Description
  s.summary = <<-EOF
CodeRay is a fast syntax highlighter engine for many languages.
  EOF
  s.description = <<-EOF
CodeRay is a Ruby library for syntax highlighting.
I try to make CodeRay easy to use and intuitive, but at the same time
fully featured, complete, fast and efficient.

Usage is simple:
  require 'coderay'
  code = 'some %q(weird (Ruby) can\'t shock) me!'
  puts CodeRay.scan(code, :ruby).html
  EOF

  # Files
  s.require_path = 'lib'
  # s.autorequire = 'coderay'
  s.executables = [ 'coderay', 'coderay_stylesheet' ]

  s.files = ["./lib/coderay/duo.rb", "./lib/coderay/encoder.rb", "./lib/coderay/encoders/_map.rb", "./lib/coderay/encoders/count.rb", "./lib/coderay/encoders/debug.rb", "./lib/coderay/encoders/div.rb", "./lib/coderay/encoders/html/css.rb", "./lib/coderay/encoders/html/numerization.rb", "./lib/coderay/encoders/html/output.rb", "./lib/coderay/encoders/html.rb", "./lib/coderay/encoders/json.rb", "./lib/coderay/encoders/null.rb", "./lib/coderay/encoders/page.rb", "./lib/coderay/encoders/span.rb", "./lib/coderay/encoders/statistic.rb", "./lib/coderay/encoders/term.rb", "./lib/coderay/encoders/text.rb", "./lib/coderay/encoders/tokens.rb", "./lib/coderay/encoders/xml.rb", "./lib/coderay/encoders/yaml.rb", "./lib/coderay/for_redcloth.rb", "./lib/coderay/helpers/file_type.rb", "./lib/coderay/helpers/gzip_simple.rb", "./lib/coderay/helpers/plugin.rb", "./lib/coderay/helpers/word_list.rb", "./lib/coderay/scanner.rb", "./lib/coderay/scanners/_map.rb", "./lib/coderay/scanners/c.rb", "./lib/coderay/scanners/css.rb", "./lib/coderay/scanners/debug.rb", "./lib/coderay/scanners/delphi.rb", "./lib/coderay/scanners/diff.rb", "./lib/coderay/scanners/groovy.rb", "./lib/coderay/scanners/html.rb", "./lib/coderay/scanners/java/builtin_types.rb", "./lib/coderay/scanners/java.rb", "./lib/coderay/scanners/java_script.rb", "./lib/coderay/scanners/json.rb", "./lib/coderay/scanners/nitro_xhtml.rb", "./lib/coderay/scanners/php.rb", "./lib/coderay/scanners/plaintext.rb", "./lib/coderay/scanners/python.rb", "./lib/coderay/scanners/rhtml.rb", "./lib/coderay/scanners/ruby/patterns.rb", "./lib/coderay/scanners/ruby.rb", "./lib/coderay/scanners/scheme.rb", "./lib/coderay/scanners/sql.rb", "./lib/coderay/scanners/xml.rb", "./lib/coderay/scanners/yaml.rb", "./lib/coderay/style.rb", "./lib/coderay/styles/_map.rb", "./lib/coderay/styles/cycnus.rb", "./lib/coderay/styles/murphy.rb", "./lib/coderay/token_classes.rb", "./lib/coderay/tokens.rb", "./lib/coderay.rb", "./lib/README", "./LICENSE"]

  # Credits
  s.author = 'murphy'
  s.email = 'murphy@rubychan.de'
  s.homepage = 'http://coderay.rubychan.de'
end
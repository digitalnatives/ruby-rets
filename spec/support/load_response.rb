module Support
  module LoadResponse
    RESPONSES_PATH = Bundler.root.join('spec', 'responses')

    def load_response(dir, file)
      path = RESPONSES_PATH.join(dir, "#{file}.txt")
      File.read(path).to_s
          .gsub("\r", '')
          .gsub("\n", "\r\n")
    end

    def load_response_stream(dir, file)
      StringIO.new(load_response(dir, file))
    end
  end
end

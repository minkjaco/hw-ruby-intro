guard :rspec, cmd: 'rspec' do
    watch(%r{^lib/(.+).rb$}) do |m|
        "spec/#{m[1]}_spec.rb"
    end
end
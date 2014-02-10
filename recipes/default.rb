ruby_block 'exit' do
  block do
    Chef::Application.exit!('Exiting', 0)
  end
end

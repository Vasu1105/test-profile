# copyright: 2018, The Authors

title "sample section"

# you can also use plain tests
# describe file("/tmp") do
#   it { should be_directory }
# end

# you add controls here
# control "tmp-1.0" do                        # A unique ID for this control
#   impact 0.7                                # The criticality, if this control fails.
#   title "Create /tmp directory"             # A human-readable title
#   desc "An optional description..."
#   describe file("/tmp") do                  # The actual test
#     it { should be_directory }
#   end
# end

control 'Ensure_fileX_has_correct_permissions' do
  # describe file('/some/path/to/non-existing/file') do
  #     its('mode') { should eq '0600' }
  # end

  describe file('/some/path/to/non-existing/file') do
      it { should exist }
      its('mode') { should cmp '0600' }
  end
end

# describe sshd_config do
#   its('Port') { should eq '22' }
#   its('Port') { should_not eq 22 }
# end
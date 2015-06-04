control_group 'integrity' do
  control 'correct software is installed' do
    it 'postfix is installed' do
      expect(package('postfix')).to be_installed
    end

    it 'wget is not installed' do
      expect(package('wget')).to_not be_installed
    end
  end
end

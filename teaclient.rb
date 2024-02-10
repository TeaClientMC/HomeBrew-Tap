cask 'teaclient' do

    version 'latest'
    sha256 :no_check

    depends_on macos: '>= :mojave'
  
    if Hardware::CPU.arm?
        url "https://github.com/TeaClientMC/Launcher/releases/#{version.before_comma}/download/arm64.dmg"
      else
        url "https://github.com/TeaClientMC/Launcher/releases/#{version.before_comma}/download/x86_64.dmg"
      end
    name "TeaClient"
    desc 'An OpenSourced Client'
    homepage 'https://teaclient.net/'

    auto_updates true

    app 'TeaClient.app'

    uninstall quit: "net.teaclient.dev"
    zap trash: [
    '~/Library/Application Support/TeaClient',
    '~/Library/Preferences/net.teaclient.dev.plist',
    '~/Library/Caches/net.teaclient.dev',
    '~/Library/Logs/TeaClient',
]
  end
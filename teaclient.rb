cask 'teaclient' do

    version 'latest'
    sha256 :no_check
  
    url "https://github.com/TeaClientMC/Launcher/releases/latest/download/#{version.before_comma}.dmg"
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
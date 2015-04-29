require 'formula'

HOMEBREW_BREW_MIKU_VERSION = '0.0.1'

class BrewMiku < Formula
  homepage 'https://github.com/unasuke/homebrew-miku/'
  version HOMEBREW_BREW_MIKU_VERSION
  head 'https://github.com/unasuke/homebrew-miku.git', :branch => 'master'

  skip_clean 'bin'

  def install
    prefix.install 'bin'
    (bin+'brew-miku').chmod 0755
  end
end

class gvm($version='latest', $install_gvm=true) {
	stage { 'gvm-install': before => Stage['main'] }

  if $install_gvm {
    class {
      'gvm::dependencies': stage => 'gvm-install';
      'gvm::system':       stage => 'main';
    }
  }
}
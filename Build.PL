use Module::Build;
# See perldoc Module::Build for details of how this works

my $build = Module::Build->new( 
  module_name     => 'RLearn',
  license         => 'perl',
  test_files      => [
    't',
  ],
  requires => {
  }
);

$build->dispatch( 'build' );
# $build->dispatch( 'test', verbose => 0 );
$build->dispatch( 'install' );

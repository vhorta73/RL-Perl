package RLearn;

=head1 NAME

RLearn - The Reinforcement Learning build class.

=head1 SYNOPSIS

  perl Build.PL

=head1 DESCRIPTION

RLearn uses basic reinforcement-learning techniques to calculate best action 
at any state if already fully explored respective Environment. 

=cut

BEGIN {
  use Exporter;
  use vars     qw{ $VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS };
  $VERSION     = '0.01';
  push @ISA,   qw{ Exporter };
 
  @EXPORT      = qw{};
  @EXPORT_OK   = qw{};
  %EXPORT_TAGS = ();
}

#-------------------------------------------------------------------------------
1;
#===============================================================================
__END__
#===============================================================================

package Tk::JPEG::Lite;
require DynaLoader;
use Tk 800.015;
require Tk::Image;
require Tk::Photo;
require DynaLoader;

use vars qw($VERSION $XS_VERSION);
$VERSION = '2.01401'; # $Id: Lite.pm,v 1.2 2002/04/16 00:56:41 eserte Exp $

@ISA = qw(DynaLoader);

$XS_VERSION = $Tk::VERSION;
bootstrap Tk::JPEG::Lite;

1;

__END__

=head1 NAME

Tk::JPEG::Lite - lite JPEG loader for Tk::Photo

=head1 SYNOPSIS

  use Tk;
  use Tk::JPEG::Lite; # you must not use Tk::JPEG simultaneously

  my $image = $widget->Photo('-format' => 'jpeg', -file => 'something.jpg');


=head1 DESCRIPTION

This is a version of Tk::JPEG using a shared library.

=head1 AUTHOR

Nick Ing-Simmons E<lt>nick@ni-s.u-net.comE<gt>

Stripped down to the lite version by Slaven Rezic E<lt>slaven.rezic@berlin.deE<gt>

=cut



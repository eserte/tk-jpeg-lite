package Tk::JPEG::Lite;
require DynaLoader;
use Tk 800.015;
require Tk::Image;
require Tk::Photo;
require DynaLoader;

use vars qw($VERSION $XS_VERSION);
$VERSION = '2.014'; # $Id: Lite.pm,v 1.1 2002/04/16 00:22:03 eserte Exp $

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

This is an extension for Tk800.015 and later which supplies
JPEG format loader for Photo image type.

JPEG access is via release 5 of the The Independent JPEG Group's (IJG)
free JPEG software.

=head1 AUTHOR

Nick Ing-Simmons E<lt>nick@ni-s.u-net.comE<gt>

=cut



use Tk::MMutil;
use Tk::Config;

my $LIBS = '-L/usr/local/lib -ljpeg';
my $INC  = '-I/usr/local/include';

if (eval { require Devel::CheckLib; 1; }) {
    my(@libpath) = map { s/^-L//; $_ } grep { /^-L/ } split / /, $LIBS;
    my(@lib)     = map { s/^-l//; $_ } grep { /^-l/ } split / /, $LIBS;
    Devel::CheckLib::check_lib_or_exit(lib => \@lib, libpath => \@libpath);
}

Tk::MMutil::TkExtMakefile(
    'NAME'         => 'Tk::JPEG::Lite', 
    'INC'          => $INC,
    'LIBS'         => [$LIBS],
    'EXE_FILES'    => ['tkjpeg'],
    'PMLIBDIRS'    => [],
    'OBJECT'       => '$(O_FILES)',
    'VERSION_FROM' => 'Lite.pm',
    'DEFINE' => '-DHAVE_JPEGLIB_H',
    'XS_VERSION'   => $Tk::Config::VERSION,
    'dist'         => { COMPRESS => 'gzip -f9', SUFFIX => '.gz' },
    'PREREQ_PM'    => {'Tk' => 800.015 },
    'EXTRA_META'   => <<'EOF',
configure_requires:
  Tk::MMutil: 0
  Tk::Config: 0
EOF
);

sub MY::postamble {
    my $postamble = "";

    if (defined $ENV{USER} && $ENV{USER} eq 'eserte' && $^O =~ /bsd/i && -f "../../perl.release.mk") {
	$postamble .= <<'EOF';

.include "../../perl.release.mk"
.include "../../perl.cvs.mk"

EOF
    }

    $postamble;
}

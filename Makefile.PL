use Tk::MMutil;
use Tk::Config;

Tk::MMutil::TkExtMakefile(
    'NAME'         => 'Tk::JPEG::Lite', 
    'INC'          => '-I/usr/local/include',
    'LIBS'         => ['-L/usr/local/lib -ljpeg'],
    'EXE_FILES'    => ['tkjpeg'],
    'PMLIBDIRS'    => [],
    'OBJECT'       => '$(O_FILES)',
    'VERSION_FROM' => 'Lite.pm',
    'DEFINE' => '-DHAVE_JPEGLIB_H',
    'XS_VERSION'   => $Tk::Config::VERSION,
    'dist'         => { COMPRESS => 'gzip -f9', SUFFIX => '.gz' },
    'PREREQ_PM'    => {'Tk' => 0},
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

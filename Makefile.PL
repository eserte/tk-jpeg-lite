use Tk::MMutil;
use Tk::Config;
#my $l = $Config::Config{'lib_ext'};

#$Tk::MakeDepend::define{'HAVE_JPEGLIB_H'}=1;

Tk::MMutil::TkExtMakefile(
    'NAME'         => 'Tk::JPEG::Lite', 
#    'INC'          => '-Ijpeg',
    'INC'          => '-I/usr/local/include',
    'LIBS'         => ['-L/usr/local/lib -ljpeg'],
    'EXE_FILES'    => ['tkjpeg'],
    'PMLIBDIRS'    => [],
    'OBJECT'       => '$(O_FILES)',
    'VERSION_FROM' => 'Lite.pm',
    'DEFINE' => '-DHAVE_JPEGLIB_H',
    'XS_VERSION'   => $Tk::Config::VERSION,
#    'MYEXTLIB'     => 'jpeg/libjpeg.a',   
#    'MYEXTLIB'     => "jpeg/libjpeg$l",
    'dist'         => { COMPRESS => 'gzip -f9', SUFFIX => '.gz' },
#    'clean'        => { FILES => 'jpeg/Makefile jpeg/config.status jpeg/jconfig.h' }   
	);


# sub MY::postamble {
# '
# $(MYEXTLIB)  : FORCE
# 	cd jpeg && $(MAKE) libjpeg'.$l.'
# ';
# }




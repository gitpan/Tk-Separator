use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'Tk::Separator',
    'VERSION_FROM'	=> 'Separator.pm', # finds $VERSION
    'PREREQ_PM'		=> {}, # e.g., Module::Name => 1.1
    ($] >= 5.004 ?    ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM => 'Separator.pod', # retrieve abstract from module
       AUTHOR        => 'William G. Davis <william_g_davis@users.sourceforge.net>')
       : ()),
     PM => {
	     'Separator.pm'  => '$(INST_LIBDIR)/Separator.pm',
	     'Separator.pod' => '$(INST_LIBDIR)/Separator.pod',
     }
);

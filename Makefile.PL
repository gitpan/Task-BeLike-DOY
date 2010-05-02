
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Task::BeLike::DOY',
                       'DISTNAME' => 'Task-BeLike-DOY',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31'
                                               },
                       'AUTHOR' => 'Jesse Luehrs <doy at tozt dot net>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'modules I use',
                       'EXE_FILES' => [],
                       'VERSION' => '0.01',
                       'PREREQ_PM' => {
                                        'App::Termcast' => '0.06',
                                        'Devel::NYTProf' => '3.00',
                                        'YAML' => '0',
                                        'App::Nopaste' => '0.20',
                                        'Archive::Zip' => '0',
                                        'Pod::Coverage::TrustPod' => '0',
                                        'Module::Setup' => '0',
                                        'App::Ack' => '0',
                                        'B::Keywords' => '0',
                                        'Scalar::Defer' => '0',
                                        'Test::Pod' => '0',
                                        'CPAN::Mini::Webserver' => '0',
                                        'KiokuDB::Navigator' => '0',
                                        'Moose' => '1.00',
                                        'Test::Pod::Coverage' => '0',
                                        'Module::Refresh' => '0',
                                        'IO::Pty::Easy' => '0.08',
                                        'WWW::Mechanize' => '0',
                                        'App::cpanminus' => '1.00',
                                        'Carp::Always::Color' => '0.03',
                                        'CPAN::Mini' => '0',
                                        'Net::GitHub' => '0.06',
                                        'Term::ReadLine::Gnu' => '0',
                                        'Dist::Zilla' => '2.00',
                                        'Path::Class' => '0',
                                        'Devel::REPL' => '0',
                                        'Devel::Cover' => '0',
                                        'LWP' => '0',
                                        'Carp::REPL' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM}; 
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod}; 
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);




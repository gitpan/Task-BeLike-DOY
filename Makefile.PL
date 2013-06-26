
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "modules I use",
  "AUTHOR" => "Jesse Luehrs <doy at tozt dot net>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Task-BeLike-DOY",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Task::BeLike::DOY",
  "PREREQ_PM" => {
    "App::ForkProve" => 0,
    "App::Nopaste" => "0.20",
    "App::Termcast" => "0.06",
    "App::Ttyrec" => 0,
    "App::cpanminus" => "1.5007",
    "App::cpanoutdated" => "0.05",
    "App::ph" => 0,
    "App::pmuninstall" => 0,
    "Archive::Zip" => 0,
    "Bread::Board::Declare" => 0,
    "CPAN::Mini" => 0,
    "Carp::Always::Color" => "0.03",
    "Carp::Reply" => 0,
    "Clipboard" => 0,
    "DateTime" => 0,
    "Devel::Cover" => 0,
    "Devel::FindRef" => 0,
    "Devel::NYTProf" => "3.00",
    "Devel::PartialDump" => 0,
    "Devel::STDERR::Indent" => 0,
    "Devel::Trace" => 0,
    "Dist::Zilla" => "4.00",
    "Dist::Zilla::PluginBundle::DOY" => "0.09",
    "ExtUtils::MakeMaker::Dist::Zilla::Develop" => 0,
    "File::pushd" => 0,
    "HTTP::Parser::XS" => 0,
    "IO::Pty::Easy" => "0.08",
    "JSON" => 0,
    "LWP" => 0,
    "LWP::Protocol::https" => 0,
    "LastFM::Export" => 0,
    "Moose" => "2.0400",
    "Path::Class" => "0.25",
    "Plack" => 0,
    "Pod::Coverage::TrustPod" => 0,
    "Pod::Cpandoc" => 0,
    "Proc::InvokeEditor" => 0,
    "Reply" => 0,
    "Term::ProgressBar" => 0,
    "Term::ReadLine::Gnu" => 0,
    "Term::TtyRec::Plus" => "0.09",
    "Test::Fatal" => 0,
    "Test::More" => "0.88",
    "Test::Pod" => 0,
    "Test::Pod::Coverage" => 0,
    "Test::Pretty" => 0,
    "Test::Requires" => 0,
    "Unicode::Tussle" => 0,
    "WWW::Mechanize" => 0,
    "YAML" => 0,
    "autodie" => 0,
    "circular::require" => 0,
    "namespace::autoclean" => 0
  },
  "TEST_REQUIRES" => {
    "Test::More" => "0.88"
  },
  "VERSION" => "0.10",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  my $tr = delete $WriteMakefileArgs{TEST_REQUIRES};
  my $br = $WriteMakefileArgs{BUILD_REQUIRES};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

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




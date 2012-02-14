
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "modules I use",
  "AUTHOR" => "Jesse Luehrs <doy at tozt dot net>",
  "BUILD_REQUIRES" => {
    "Test::More" => "0.88"
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Task-BeLike-DOY",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Task::BeLike::DOY",
  "PREREQ_PM" => {
    "App::Ack" => 0,
    "App::Nopaste" => "0.20",
    "App::Termcast" => "0.06",
    "App::cpanminus" => "1.4000",
    "App::cpanoutdated" => "0.05",
    "App::pmuninstall" => 0,
    "Archive::Zip" => 0,
    "B::Keywords" => 0,
    "CPAN::Mini" => 0,
    "CPAN::Mini::Webserver" => 0,
    "Carp::Always::Color" => "0.03",
    "Carp::REPL" => 0,
    "Class::Refresh" => 0,
    "DateTime" => 0,
    "Devel::Cover" => 0,
    "Devel::NYTProf" => "3.00",
    "Devel::PartialDump" => 0,
    "Devel::REPL" => 0,
    "Devel::Trace" => 0,
    "Dist::Zilla" => "4.00",
    "Dist::Zilla::PluginBundle::DOY" => "0.05",
    "ExtUtils::MakeMaker::Dist::Zilla::Develop" => 0,
    "File::pushd" => 0,
    "IO::Pty::Easy" => "0.08",
    "KiokuDB" => 0,
    "KiokuDB::Backend::DBI" => 0,
    "LWP" => 0,
    "Moose" => "2.0000",
    "MooseX::Types::Path::Class" => 0,
    "MooseX::Types::URI" => 0,
    "Net::GitHub" => "0.06",
    "Plack" => 0,
    "Pod::Coverage::TrustPod" => 0,
    "Pod::Cpandoc" => 0,
    "Proc::InvokeEditor" => 0,
    "Scalar::Defer" => 0,
    "Term::ReadLine::Gnu" => 0,
    "Test::Pod" => 0,
    "Test::Pod::Coverage" => 0,
    "WWW::Mechanize" => 0,
    "YAML" => 0,
    "autodie" => 0,
    "circular::require" => 0
  },
  "VERSION" => "0.05",
  "test" => {
    "TESTS" => "t/*.t"
  }
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




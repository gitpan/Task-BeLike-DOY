package Task::BeLike::DOY;
BEGIN {
  $Task::BeLike::DOY::AUTHORITY = 'cpan:DOY';
}
{
  $Task::BeLike::DOY::VERSION = '0.06';
}
#ABSTRACT: modules I use


1;

__END__
=pod

=head1 NAME

Task::BeLike::DOY - modules I use

=head1 VERSION

version 0.06

=head1 TASK CONTENTS

=head2 Useful apps

=head3 L<App::Ack>

=head3 L<App::Nopaste> 0.20

Version 0.20 required because: has Codepeek pastebin

=head3 L<App::Termcast> 0.06

=head3 L<App::Ttyrec>

=head3 L<LastFM::Export>

=head3 L<Term::TtyRec::Plus> 0.09

Version 0.09 required because: for ttyplay and ttytime

=head2 Development tools

=head3 L<Carp::Always::Color> 0.03

=head3 L<Carp::REPL>

=head3 L<circular::require>

=head3 L<Devel::Cover>

=head3 L<Devel::NYTProf> 3.00

=head3 L<Devel::REPL>

=head3 L<Devel::Trace>

=head3 L<Dist::Zilla> 4.00

=head3 L<Dist::Zilla::PluginBundle::DOY> 0.07

=head3 L<ExtUtils::MakeMaker::Dist::Zilla::Develop>

=head2 Useful optional deps for things

=head3 L<autodie>

=head3 L<Archive::Zip>

=head3 L<B::Keywords>

=head3 L<Class::Refresh>

=head3 L<Devel::PartialDump>

=head3 L<JSON>

=head3 L<KiokuDB::Backend::DBI>

=head3 L<LWP>

=head3 L<Pod::Coverage::TrustPod>

=head3 L<Proc::InvokeEditor>

=head3 L<Scalar::Defer>

=head3 L<Term::ReadLine::Gnu>

=head3 L<Test::Pod>

=head3 L<Test::Pod::Coverage>

=head3 L<YAML>

=head2 CPAN interaction

=head3 L<App::cpanminus> 1.5007

Version 1.5007 required because: for build.log prompting

=head3 L<App::cpanoutdated> 0.05

Version 0.05 required because: for offline mode

=head3 L<App::pmuninstall>

=head3 L<CPAN::Mini>

=head3 L<CPAN::Mini::Webserver>

=head3 L<Pod::Cpandoc>

=head2 Modules I use a lot

=head3 L<Bread::Board::Declare>

=head3 L<Data::Stream::Bulk>

=head3 L<Data::Visitor>

=head3 L<DateTime>

=head3 L<KiokuDB>

=head3 L<Moose> 2.0400

=head3 L<MooseX::Types::Path::Class>

=head3 L<MooseX::Types::URI>

=head3 L<namespace::autoclean>

=head3 L<Path::Class> 0.25

Version 0.25 required because: for ->traverse

=head3 L<Plack>

=head3 L<Term::ProgressBar>

=head3 L<Test::Requires>

=head2 Dependencies for my non-CPAN apps

=head3 L<IO::Pty::Easy> 0.08

=head3 L<Net::GitHub> 0.06

Version 0.06 required because: includes ::V2

=head3 L<File::pushd>

=head3 L<WWW::Mechanize>

=begin taskweaver_parsing_is_broken




=end taskweaver_parsing_is_broken

=head1 AUTHOR

Jesse Luehrs <doy at tozt dot net>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2012 by Jesse Luehrs.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


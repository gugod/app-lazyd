package App::Lazyd;

use strict;
use warnings;

our $VERSION = '0.01';

use Net::Delicious;
use URI::Title qw( title );

sub run {
    my ($self, $config) = @_;

    die "Need to set both username and password."
	unless defined($config->{username}) && defined($config->{password});
    
    my $del = Net::Delicious->new({
	user => $config->{username},
	pswd => $config->{password}
    });

    my $title = title($url) || "";
    my $auto_tags = join " ", split /\W/, "$url  $title";

    $del->add_post({
	url => $url,
	tags => "$auto_tags" . ($tags||""),
	description => $url,
    });
}

1;
__END__

=head1 NAME

App::Lazyd -

=head1 SYNOPSIS

  use App::Lazyd;

=head1 DESCRIPTION

App::Lazyd is

=head1 AUTHOR

Kang-min Liu E<lt>gugod@gugod.orgE<gt>

=head1 SEE ALSO

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

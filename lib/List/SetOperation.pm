package List::SetOperation;
use 5.008001;
use strict;
use warnings;

use Exporter qw/import/;
use List::MoreUtils qw/uniq/;

our $VERSION = "0.01";
our @EXPORT_OK = qw/intersection difference/;

sub intersection {
    my @all = map{ @{$_} } @_;

    my %count;
    for my $value (@all) {
        $count{$value}++;
    }

    my @intersection = grep { $count{$_} == scalar @_ } uniq @all;

    return @intersection;
}

sub difference {
    my ($base_set, $remove_set) = @_;

    my %remove_fg = map { $_ => 0 } @$base_set;

    for my $value (@$remove_set) {
        $remove_fg{$value} = 1;
    }

    my @difference = grep { !$remove_fg{$_} } @$base_set;

    return @difference;
}


1;
__END__

=encoding utf-8

=head1 NAME

List::SetOperation - It's new $module

=head1 SYNOPSIS

    use List::SetOperation;

=head1 DESCRIPTION

List::SetOperation is ...

=head1 LICENSE

Copyright (C) meru_akimbo.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

meru_akimbo E<lt>merukatoruayu0@gmail.comE<gt>

=cut


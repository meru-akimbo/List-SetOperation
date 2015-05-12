package List::SetOperation;
use 5.008001;
use strict;
use warnings;

use Exporter qw/import/;
use List::MoreUtils qw/uniq/;

our $VERSION = "0.01";
our @EXPORT_OK = qw/intersection/;

sub intersection {
    my @all;
    my %count;

    for my $set (@_) {
        for my $value (@$set) {
            $count{$value}++;
        }
        push @all, @$set;
    }

    my @intersection = grep { $count{$_} == scalar @_ } uniq @all;

    return @intersection;
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


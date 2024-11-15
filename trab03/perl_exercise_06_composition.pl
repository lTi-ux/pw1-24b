#!/usr/bin/perl
use strict;
use warnings;
use utf8;
use Moose;

# Clase Motor
package Motor;
use Moose;

has 'potencia' => (is => 'rw', isa => 'Int');

# Clase Coche
package Coche;
use Moose;

has 'marca' => (is => 'rw', isa => 'Str');
has 'motor' => (is => 'rw', isa => 'Motor');

package main;
my $motor = Motor->new(potencia => 150);
my $coche = Coche->new(marca => 'Toyota', motor => $motor);

print "El coche ", $coche->marca, " tiene un motor con ", $coche->motor->potencia, " caballos de potencia\n";

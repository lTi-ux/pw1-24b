#!/usr/bin/perl
use strict;
use warnings;
use utf8;
use Moose;

# Definición de la clase
package Animal;
use Moose;

has 'nombre' => (is => 'rw', isa => 'Str');
has 'especie' => (is => 'rw', isa => 'Str');

package main;
my $animal = Animal->new(nombre => 'Luna', especie => 'Perro');
print "Nombre: ", $animal->nombre, "\n";
print "Especie: ", $animal->especie, "\n";
